#!/bin/bash

choice=$(printf "Shutdown\nReboot\nLogout\nLock" | rofi -dmenu -p "Power" -no-show-match -no-custom -theme-str 'inputbar { enabled: false; } listview { lines: 4; }')

case "$choice" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Logout) i3-msg exit ;;
  Lock) ~/.config/i3/lock.sh ;;
esac
