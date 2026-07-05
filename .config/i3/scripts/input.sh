#!/usr/bin/env bash

set -e

# беремо ВСІ pointer devices, не тільки перший
mapfile -t DEVICES < <(xinput list --id-only | while read -r id; do
    name=$(xinput list --name-only "$id" 2>/dev/null)
    echo "$id $name"
done | grep -Ei "mouse|logitech|pointer" | awk '{print $1}')

for id in "${DEVICES[@]}"; do
    # accel speed
    xinput set-prop "$id" "libinput Accel Speed" -0.2 2>/dev/null || true
    xinput set-prop "$id" "libinput Accel Profile Enabled" 0 1 0 2>/dev/null || true
done
