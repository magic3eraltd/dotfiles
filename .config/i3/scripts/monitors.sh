#!/usr/bin/env bash

PRIMARY_MONITOR="@PRIMARY@"
SECONDARY_MONITOR="@SECONDARY@"
THIRD_MONITOR="@THIRD@"

xrandr --auto

if [[ -n "$PRIMARY_MONITOR" ]]; then
    xrandr --output "$PRIMARY_MONITOR" --primary
fi

if [[ -n "$SECONDARY_MONITOR" ]]; then
    xrandr --output "$SECONDARY_MONITOR" --auto --left-of "$PRIMARY_MONITOR"
fi

if [[ -n "$THIRD_MONITOR" ]]; then
    xrandr --output "$THIRD_MONITOR" --auto --right-of "$PRIMARY_MONITOR"
fi
