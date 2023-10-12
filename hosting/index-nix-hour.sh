#!/usr/bin/env bash
cache=${YT_NIXHOUR_DIR:-${XDG_CACHE_HOME:-~/.cache}/nix-hour-yt}

description="Usage: $0 -h | [command]

Crawl youtube API to create a Markdown index of all nix hours.
Run commands in order for a complete update.

See: https://github.com/tweag/nix-hour

Requirements: curl, jq, gnu-coreutils and a Youtube API-key

Cache: '$cache'

Commands:
    refresh-index   Refresh the list of videos and write it to cache
    get-vid-info    Get complete information for every video and wirte it to cache
    markdown        Print markdown output (needs the other steps)
"

index="$cache/yt_cache_nixhour.json"


ytnh:refresh_index() {
    mkdir -p "$cache"
    nix_hour=$(_req 'playlistItems?part=snippet&maxResults=100&playlistId=PLyzwHTVJlRc8yjlx4VR4LU5A5O44og9in')
    jq . <<< "$nix_hour" |
        tee "$index"
}

ytnh:get_vid_info() {
    episode=1
    for vid in $(jq -r '.items[] | .snippet.resourceId.videoId' yt_cache_nixhour.json); do
        echo "video-id: $vid"
        printf -v target "$cache/vid_%.3i_${vid}_raw.json" "$episode"
        (( episode++ ))
        test -r "$target" ||
            _req "videos?part=snippet&id=$vid" > "$target"
        sleep 5  # precaution for not tripping rate-limits
    done
}

ytnh:markdown() {
    echo -e '# Nix-Hour Index\n\n'
    for fl in "$cache/vid_"*"_raw.json"; do
        data=$(jq '.items[] | .snippet | { title, description } ' "$fl")
        title=$(jq -r .title <<< "$data")
        description=$(jq -r .description <<< "$data")
        [[ $title =~ \ \#([0-9]+) ]]
        episode="${BASH_REMATCH[1]}"
        vid=${fl/_raw.json/};vid=${vid##*vid_};vid=${vid#*_}
        echo -e "## $title\n"
        sed -E -n "s|^(([0-9]*):([0-9]+))( .*)$| - [\1](https://www.youtube.com/live/$vid?t=\2m\3s)\4|p" <<< "$description" ||
            continue
        echo -e "\n\n"
    done
}

### Boring Argument Handling and Helpers

_req() {
    endpoint=${1:?Need an endpoint as first argument}; shift || true
    request=${1:-GET}; shift || true

    curl --request "${request}" \
        --no-progress-meter \
        --header "Content-Type:application/json" \
        --max-time 10 \
        --url "https://www.googleapis.com/youtube/v3/$endpoint&key=${YT_API_KEY:?Please set YT_API_KEY}" \
        "$@"
        # --header  "Authorization: Bearer ${key:?Need API key!}" \
}

if [ "$0" = "${BASH_SOURCE[0]}" ]; then
    for itm in "$@"; do if [[ "$itm" =~ ^(-h|--help|-help|-\?)$ ]]; then
        echo -e "$description" 1>&2; exit 0;
    fi; done
    set -o errexit -o pipefail -o nounset ${DEBUG:+-o xtrace}
    cmd=${1:-markdown}
    cmd=${cmd//-/_}
    shift || true
    ytnh:$cmd "$@"
fi

