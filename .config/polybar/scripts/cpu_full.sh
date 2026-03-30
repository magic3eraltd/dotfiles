#!/bin/bash
cpu=$(grep 'cpu ' /proc/stat | awk '{printf "%.0f", ($2+$4)*100/($2+$4+$5)}')
temp=$(sensors | awk '/Tctl:/ {gsub(/\+|°C/,"",$2); printf "%.0f°C", $2}')
val=" 󰍛 ${cpu}%|󰔏${temp}"
width=8
pad=$(( (width - ${#val}) / 2 ))
printf "%*s%s%*s\n" $pad "" "$val" $pad ""
