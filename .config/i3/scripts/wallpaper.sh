#!/usr/bin/env bash

DIR="$HOME/Pictures/wallpapers"

FILE=$(find "$DIR" -type f | shuf -n 1)

feh --bg-fill "$FILE"
