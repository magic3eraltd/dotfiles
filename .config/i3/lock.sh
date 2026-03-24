#!/bin/bash

rm -f /tmp/lock.png /tmp/lock_blur.png
sleep 0.2

# Робимо скріншот і розмиваємо
scrot /tmp/lock.png
ffmpeg -y -i /tmp/lock.png -vf "gblur=sigma=20" /tmp/lock_blur.png 2>/dev/null

i3lock \
  --image=/tmp/lock_blur.png \
  --clock \
  --time-str="%H:%M" \
  --date-str="%a, %d %b" \
  \
  --inside-color=1A1D23cc \
  --ring-color=3A404Cff \
  --keyhl-color=E6E9EFff \
  --bshl-color=FF5F87ff \
  --separator-color=00000000 \
  \
  --insidever-color=2A2F38cc \
  --insidewrong-color=FF5F8733 \
  --ringver-color=E6E9EFff \
  --ringwrong-color=FF5F87ff \
  \
  --time-color=E6E9EFff \
  --date-color=C5C8CEff \
  --time-size=48 \
  --date-size=16 \
  --time-font="JetBrainsMono Nerd Font" \
  --date-font="JetBrainsMono Nerd Font" \
  \
  --radius=60 \
  --ring-width=4 \
  --line-uses-inside \
  --indicator
