package main

import (
	"context"
	"crypto/rand"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"io"
	"log"
	"net"
	"net/http"
	"os"

	"github.com/pkg/browser"
	"golang.org/x/oauth2"
	"golang.org/x/oauth2/google"
	youtube "google.golang.org/api/youtube/v3"
)

const (
	localListenAddr = "127.0.0.1:18080"
	redirectURL     = "http://" + localListenAddr
)

func getTokenSource(ctx context.Context, pcfg *Config) (oauth2.TokenSource, error) {
	cfg := oauth2.Config{
		ClientID:     pcfg.ClientID,
		ClientSecret: pcfg.ClientSecret,
		Endpoint:     google.Endpoint,
		RedirectURL:  redirectURL,
		Scopes: []string{
			youtube.YoutubeUploadScope,
			youtube.YoutubeForceSslScope,
		},
	}
	token, err := getToken(ctx, &cfg, pcfg.TokenFile)
	if err != nil {
		return nil, err
	}
	tokenSource := cfg.TokenSource(ctx, token)
	return tokenSource, nil
}

type CachedToken struct {
	*oauth2.Token
	Scopes []string `json:"scopes"`
}

func (t *CachedToken) Valid(scopes []string) bool {
	if !t.Token.Valid() {
		log.Printf("cached token is invalid or expired")
		return false
	}
	if len(scopes) != len(t.Scopes) {
		log.Printf("cached token has different scopes")
		return false
	}
	for i, s := range scopes {
		if s != t.Scopes[i] {
			log.Printf("cached token has different scopes")
			return false
		}
	}
	return true
}

func getToken(ctx context.Context, cfg *oauth2.Config, cache string) (*oauth2.Token, error) {
	cachedToken, err := readTokenFromFile(cache)
	if err == nil {
		if cachedToken.Valid(cfg.Scopes) {
			log.Printf("using cached token")
			return cachedToken.Token, nil
		}
	} else {
		if !os.IsNotExist(err) {
			return nil, fmt.Errorf("failed to read token file %s: %v", cache, err)
		}
	}
	token, err := authWithBrowser(ctx, cfg)
	if err != nil {
		return nil, err
	}
	err = writeTokenToFile(cache, CachedToken{Token: token, Scopes: cfg.Scopes})
	if err != nil {
		return nil, err
	}
	return token, nil
}

func readTokenFromFile(path string) (*CachedToken, error) {
	f, err := os.Open(path)
	if err != nil {
		return nil, err
	}
	defer f.Close()

	res := &CachedToken{}

	decoder := json.NewDecoder(f)
	err = decoder.Decode(res)
	if err != nil {
		return nil, err
	}

	return res, nil
}

func writeTokenToFile(path string, token CachedToken) error {
	f, err := os.OpenFile(path, os.O_RDWR|os.O_CREATE, 0644)
	if err != nil {
		return err
	}
	defer f.Close()

	encoder := json.NewEncoder(f)
	err = encoder.Encode(token)
	if err != nil {
		return err
	}

	return nil
}

func getCSRFToken() string {
	b := make([]byte, 15) // 15 bytes after base64 become 20 characters
	_, err := rand.Read(b)
	if err != nil {
		panic(err)
	}
	return base64.URLEncoding.EncodeToString(b)
}

func serveOAuthWebhook(ctx context.Context, csrfToken string) (func() (string, error), error) {
	errch := make(chan error)
	codech := make(chan string)

	mux := http.NewServeMux()
	srv := &http.Server{
		Handler: mux,
	}
	mux.HandleFunc("/", func(w http.ResponseWriter, req *http.Request) {
		log.Printf("got request: %v", req)
		if req.URL.Path != "/" {
			http.Error(w, "", 404)
			return
		}
		if req.FormValue("state") != csrfToken {
			log.Printf("got bad CSRF token: %v", req)
			http.Error(w, "", 500)
			return
		}
		code := req.FormValue("code")
		if code == "" {
			log.Printf("didn't get code: %v", req)
			http.Error(w, "", 500)
			return
		}
		log.Printf("got the code")
		w.Header().Add("content-type", "text/html")
		io.WriteString(w, `Got the code, see you on the other side.
<script>setTimeout("window.close()",3000)</script>`)
		codech <- code
	})

	l, err := net.Listen("tcp", localListenAddr)
	if err != nil {
		return nil, err
	}

	go func() {
		errch <- srv.Serve(l)
	}()

	return func() (string, error) {
		defer func() {
			err := srv.Shutdown(ctx)
			if err != nil {
				log.Printf("error when shutting down server: %v", err)
			}
		}()
		select {
		case err := <-errch:
			return "", err
		case code := <-codech:
			return code, nil
		}
	}, nil
}

func authWithBrowser(ctx context.Context, cfg *oauth2.Config) (*oauth2.Token, error) {
	csrfToken := getCSRFToken()
	getCode, err := serveOAuthWebhook(ctx, csrfToken)
	if err != nil {
		return nil, err
	}

	authURL := cfg.AuthCodeURL(csrfToken)
	log.Printf("opening URL %v in default browser", authURL)
	err = browser.OpenURL(authURL)
	if err != nil {
		return nil, err
	}
	code, err := getCode()
	if err != nil {
		return nil, err
	}
	token, err := cfg.Exchange(ctx, code)
	if err != nil {
		return nil, err
	}
	return token, nil
}
