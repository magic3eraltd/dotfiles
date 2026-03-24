#!/bin/bash
sink=$(pactl get-default-sink)
vol=$(pactl get-sink-volume "$sink" | awk '{print $5}' | tr -d '%')
muted=$(pactl get-sink-mute "$sink" | awk '{print $2}')

filled=$((vol * 8 / 100))
empty=$((8 - filled))

bar=""
for ((i=0; i<filled; i++)); do bar+="%{F#C5C8CE}─%{F-}"; done
bar+="%{F#E6E9EF}%{F-}"
for ((i=0; i<empty; i++)); do bar+="%{F#3A404C}─%{F-}"; done

if [ "$muted" = "yes" ]; then
    echo "󰖁 muted $bar"
else
    echo "󰕾 ${vol}% $bar"
fi
