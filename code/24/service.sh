#!/usr/bin/env bash
set -euo pipefail

passwordFile=$1
password=$(cat "$passwordFile")
while true; do
    echo "The secret is in file $passwordFile: $password"
    systemd-notify --ready
    sleep 2
done

