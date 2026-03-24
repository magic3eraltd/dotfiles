#!/bin/bash

choice=$(printf "Shutdown\nReboot\nLogout\nLock" | rofi -dmenu -p "Power")

case "$choice" in
  Shutdown) systemctl poweroff ;;
  Reboot) systemctl reboot ;;
  Logout) i3-msg exit ;;
  Lock) ~/.config/i3/lock.sh ;;
esac
