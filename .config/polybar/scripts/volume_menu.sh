#!/bin/bash

# Отримуємо список sink-ів
sinks=$(pactl list sinks short | awk '{print $2}')
default_sink=$(pactl get-default-sink)

# Формуємо список для rofi з позначкою активного
items=""
while IFS= read -r sink; do
    if [ "$sink" = "$default_sink" ]; then
        items+="● $sink\n"
    else
        items+="○ $sink\n"
    fi
done <<< "$sinks"

choice=$(echo -e "$items" | rofi -dmenu -p "Audio output")

# Прибираємо префікс ● або ○
sink=$(echo "$choice" | awk '{print $2}')

if [ -n "$sink" ]; then
    pactl set-default-sink "$sink"
fi
