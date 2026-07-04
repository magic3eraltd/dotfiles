#!/bin/bash

killall -q polybar
while pgrep -x polybar >/dev/null; do sleep 0.2; done

export XDG_CURRENT_DESKTOP=i3

polybar main &
