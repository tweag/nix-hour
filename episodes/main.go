package main

import (
	"context"
	"encoding/json"
	"fmt"
	"log"
	"os"
	"os/exec"
	"regexp"
	"strings"

	"google.golang.org/api/option"
	"google.golang.org/api/youtube/v3"
)

type Config struct {
	TokenFile    string `json:"token_file"`
	ClientID     string `json:"client_id"`
	ClientSecret string `json:"client_secret"`
	PlaylistID   string `json:"playlist_id"`
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

func getNixValue(path string, result any) error {
	cmd := exec.Command("nix", "eval", "--json", "-f", ".", path)
	log.Printf("executing command: %v", cmd.Args)
	cmd.Stderr = os.Stderr
	epjson, err := cmd.Output()
	if err != nil {
		return err
	}
	err = json.Unmarshal(epjson, &result)
	if err != nil {
		return err
	}
	return nil
}

func getEpisode(ctx context.Context, episode string) (Episode, error) {
	var res Episode
	err := getNixValue("episodes._"+episode+".youtube", &res)
	if err != nil {
		return Episode{}, err
	}
	return res, nil
}

func announce(ctx context.Context, cfg *Config, service *youtube.Service, episode Episode) error {
	return nil
}

func scrape(ctx context.Context, cfg *Config, service *youtube.Service, _ Episode) error {
	episodes, err := (service.PlaylistItems.
		List([]string{"snippet", "contentDetails"}).
		PlaylistId(cfg.PlaylistID).
		MaxResults(50). // we'll need to adjust this if we go over 50
		Do())
	if err != nil {
		return err
	}
	prevDescription := ""
	re := regexp.MustCompile("The Nix Hour #([0-9]+)(?: \\[(.*)\\])?")
	for i := range episodes.Items {
		episode := episodes.Items[len(episodes.Items)-i-1]
		title := episode.Snippet.Title
		descriptionFull := episode.Snippet.Description
		videoId := episode.ContentDetails.VideoId
		log.Printf("video id=%s, title=%s", videoId, title)
		matches := re.FindStringSubmatch(title)
		if len(matches) <= 2 {
			log.Printf("title didn't match the regexp! skipping")
			continue
		}
		number := matches[1]
		subtitle := ""
		if len(matches) >= 3 {
			subtitle = matches[2]
		}
		log.Printf("number=%s, subtitle=%s", number, subtitle)
		timestampIndex := strings.Index(descriptionFull, "\n00:00")
		if timestampIndex == -1 {
			timestampIndex = strings.Index(descriptionFull, "\n0:00")
		}
		var description, timestamps string
		if timestampIndex == -1 {
			description = descriptionFull
		} else {
			description = descriptionFull[:timestampIndex]
			timestamps = descriptionFull[timestampIndex+1:]
		}

		err := os.MkdirAll(number, 0755)
		if err != nil {
			log.Printf("failed to create directory %s: %v", number, err)
			continue
		}

		err = os.WriteFile(number+"/youtube_id", []byte(videoId), 0644)
		if err != nil {
			log.Printf("failed to write file %s/youtube_id: %v", number, err)
			continue
		}
		if timestamps != "" {
			os.WriteFile(number+"/timestamps.txt", []byte(timestamps), 0644)
			if err != nil {
				log.Printf("failed to write file %s/timestamps.txt: %v", number, err)
				continue
			}
		}
		if subtitle != "" || description != prevDescription {
			b := strings.Builder{}
			b.WriteString("{\n")
			if subtitle != "" {
				b.WriteString(`  subtitle ="` + subtitle + "\";\n")
			}
			if description != prevDescription {
				b.WriteString("  description=''\n")
				for _, line := range strings.Split(description, "\n") {
					b.WriteString("    " + line + "\n")
				}
				b.WriteString("  '';\n")
			}
			if number == "1" {
				b.WriteString("  youtube.scheduled_start_time = 0;")
			}
			b.WriteString("}\n")
			err = os.WriteFile(number+"/episode.nix", []byte(b.String()), 0644)
			if err != nil {
				log.Printf("failed to write file %s/episode.nix: %v", number, err)
				continue
			}
		}
		prevDescription = description
		parsedEpisode, err := getEpisode(ctx, number)
		if err != nil {
			log.Printf("failed to parse resulting episode: %v", err)
			continue
		}
		if parsedEpisode.Title != title {
			log.Printf("resulting title doesn't match:\n  ours: %s\ntheirs: %s", parsedEpisode.Title, title)
		}
		if parsedEpisode.Description != descriptionFull+"\n" {
			log.Printf("resulting description doesn't match:\nours:\n%s\n\ntheirs:\n%s", parsedEpisode.Description, descriptionFull)
		}
		err = updateReadme(number)
		if err != nil {
			log.Printf("failed to update README.md: %v", err)
		}
	}
	return nil
}

func updateReadme(episodeNumber string) error {
	var readme string
	err := getNixValue("episodes._"+episodeNumber+".readme_md", &readme)
	if err != nil {
		return err
	}
	err = os.WriteFile(episodeNumber+"/README.md", []byte(readme), 0644)
	if err != nil {
		return err
	}
	return nil
}

func usage() {
	fmt.Fprintln(os.Stderr, "usage: tool announce <episode>")
	os.Exit(1)
}

func main() {
	ctx := context.Background()

	if len(os.Args) < 1 || len(os.Args) > 2 {
		usage()
	}
	var action func(context.Context, *Config, *youtube.Service, Episode) error
	needs_episode := false
	switch os.Args[1] {
	case "announce":
		action = announce
		needs_episode = true
	case "scrape":
		action = scrape
	default:
		usage()
	}
	var episode Episode
	var err error
	if needs_episode {
		if len(os.Args) < 2 {
			usage()
		}
		episode, err = getEpisode(ctx, os.Args[2])
		if err != nil {
			log.Fatalf("failed to get episode metadata: %v", err)
		}
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
