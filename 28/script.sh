#!/usr/bin/env bash
set -euo pipefail

curl https://api.github.com/users/@user@ |
  jq .id
