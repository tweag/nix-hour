package main

import (
	"bufio"
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"log"
	"os"
	"os/exec"
	"time"

	"google.golang.org/api/option"
	"google.golang.org/api/youtube/v3"
)

type Config struct {
	TokenFile    string `json:"token_file"`
	UserID       string `json:"user_id"`
	ChannelID    string `json:"channel_id"`
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

func askYes() {
	r := bufio.NewReader(os.Stdin)
	for {
		fmt.Printf(`Does it look OK? (type "yes" if it does): `)
		reply, err := r.ReadString('\n')
		if err != nil {
			panic(err)
		}
		if reply == "yes\n" {
			return
		}
	}
}

func announce(ctx context.Context, cfg *Config, service *youtube.Service, episode Episode) error {
	if episode.ID != "" {
		return errors.New("Episode already has a YouTube ID")
	}
	b := youtube.LiveBroadcast{
		Snippet: &youtube.LiveBroadcastSnippet{
			Title:              episode.Title,
			Description:        episode.Description,
			ScheduledStartTime: time.Unix(int64(episode.ScheduledStartTime), 0).Format(time.RFC3339),
		},
		Status: &youtube.LiveBroadcastStatus{
			PrivacyStatus: "private",
		},
		ContentDetails: &youtube.LiveBroadcastContentDetails{
			EnableAutoStart: episode.EnableAutoStart,
			EnableAutoStop:  episode.EnableAutoStop,
			EnableDvr:       episode.EnableDvr,
		},
	}
	fmt.Printf(`Will create a live broadcast with following attributes:
Title: %s
Description: """
%s
"""
Scheduled Start Time: %s
Privacy Status: %s
Content Details:
  Enable Auto-start: %t
  Enable Auto-stop: %t
  Enable DVR: %t
`,
		b.Snippet.Title,
		b.Snippet.Description,
		b.Snippet.ScheduledStartTime,
		b.Status.PrivacyStatus,
		b.ContentDetails.EnableAutoStart,
		b.ContentDetails.EnableAutoStop,
		b.ContentDetails.EnableDvr,
	)
	askYes()
	lb, err := (service.LiveBroadcasts.
		Insert([]string{"id", "snippet", "status", "contentDetails"}, &b).
		OnBehalfOfContentOwner(cfg.UserID).
		OnBehalfOfContentOwnerChannel(cfg.ChannelID).
		Do())
	if err != nil {
		return err
	}
	log.Printf("created broadcast with id: %s", lb.Id)
	os.WriteFile(episode.Dir+"/youtube_id", []byte(lb.Id), 0755)
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
