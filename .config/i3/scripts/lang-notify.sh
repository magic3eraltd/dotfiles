#!/usr/bin/env bash
export DBUS_SESSION_BUS_ADDRESS="unix:path=/run/user/$(id -u)/bus"
sleep 2
xkb-switch -W | while read lang; do
    echo "$(date): $lang" >> /tmp/lang-debug.log
    dunstify -t 1500 -r 9999 "Language" "$lang" >> /tmp/lang-debug.log 2>&1
done
