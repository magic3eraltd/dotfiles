#!/usr/bin/env bash

xrandr --auto

PRIMARY=$(xrandr | grep " connected primary" | awk '{print $1}')

if [ -z "$PRIMARY" ]; then
  PRIMARY=$(xrandr | grep " connected" | head -n1 | awk '{print $1}')
fi

xrandr --output "$PRIMARY" --primary
