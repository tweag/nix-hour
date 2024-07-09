#!/usr/bin/env bash

gh -R NixOS/nixpkgs issue list --limit 2000 --label "0.kind: packaging request" --json url | jq -r '.[].url' > requests
