package main

import (
	"context"
	"encoding/json"
	"fmt"
	"log"
	"os"
	"os/exec"

	"google.golang.org/api/option"
	"google.golang.org/api/youtube/v3"
)

type Config struct {
	TokenFile    string `json:"token_file"`
	ClientID     string `json:"client_id"`
	ClientSecret string `json:"client_secret"`
}

func getService(ctx context.Context, cfg *Config) (*youtube.Service, error) {
	tokenSource, err := getTokenSource(ctx, cfg)
	if err != nil {
		return nil, err
	}

	return youtube.NewService(ctx, option.WithTokenSource(tokenSource))
}

type Episode struct {
	Dir                string `json:"dir"`
	ID                 string `json:"id"`
	Title              string `json:"title"`
	Description        string `json:"description"`
	ScheduledStartTime int    `json:"scheduled_start_time"`
	EnableAutoStart    bool   `json:"enable_auto_start"`
	EnableAutoStop     bool   `json:"enable_auto_stop"`
	EnableDvr          bool   `json:"enable_dvr"`
}

func getEpisode(ctx context.Context, episode string) (Episode, error) {
	cmd := exec.Command("nix", "eval", "--json", "-f", ".", "episodes._"+episode+".youtube")
	log.Printf("executing command: %v", cmd.Args)
	cmd.Stderr = os.Stderr
	epjson, err := cmd.Output()
	if err != nil {
		return Episode{}, err
	}
	var res Episode
	err = json.Unmarshal(epjson, &res)
	if err != nil {
		return Episode{}, err
	}
	return res, nil
}

func announce(ctx context.Context, cfg *Config, service *youtube.Service, episode Episode) error {
	return nil
}

func usage() {
	fmt.Fprintln(os.Stderr, "usage: tool announce <episode>")
	os.Exit(1)
}

func main() {
	ctx := context.Background()

	if len(os.Args) != 3 {
		usage()
	}
	var action func(context.Context, *Config, *youtube.Service, Episode) error
	switch os.Args[1] {
	case "announce":
		action = announce
	default:
		usage()
	}
	episode, err := getEpisode(ctx, os.Args[2])
	if err != nil {
		log.Fatalf("failed to get episode metadata: %v", err)
	}

	var cfg Config
	cfgb, err := os.ReadFile("config.json")
	if err != nil {
		log.Fatalf("failed to read config file: %v", err)
	}
	err = json.Unmarshal(cfgb, &cfg)
	if err != nil {
		log.Fatalf("failed to parse config file: %v", err)
	}

	service, err := getService(ctx, &cfg)
	if err != nil {
		log.Fatalf("failed to get YouTube service: %v", err)
	}

	err = action(ctx, &cfg, service, episode)
	if err != nil {
		log.Fatalf("failed to run action: %v", err)
	}
}
