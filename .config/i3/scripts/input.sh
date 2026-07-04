#!/usr/bin/env bash

# find first real mouse/touchpad device
DEVICE=$(xinput list --name-only | grep -iE "mouse|logitech|gaming|pointer" | head -n1)

# fallback if nothing found
if [ -z "$DEVICE" ]; then
    exit 0
fi

# set acceleration (example)
xinput --set-prop "$DEVICE" "libinput Accel Speed" -0.2 2>/dev/null

# enable natural scrolling OFF (optional safe default)
xinput --set-prop "$DEVICE" "libinput Natural Scrolling Enabled" 0 2>/dev/null
