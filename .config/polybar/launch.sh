#!/usr/bin/env bash

killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 0.2; done

mapfile -t M < <(xrandr | grep " connected" | cut -d" " -f1)

PRIMARY="${M[0]}"

# MAIN bar ONLY on primary
MONITOR="$PRIMARY" polybar main &

# SECONDARY bars on all other monitors
for ((i=1; i<${#M[@]}; i++)); do
    MONITOR="${M[$i]}" polybar secondary &
done
