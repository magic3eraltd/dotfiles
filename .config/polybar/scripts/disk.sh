#!/bin/bash
val="󰋊 $(df -h / | awk 'NR==2 {sub(/G/,"",$3); sub(/G/,"GB",$2); print $3 "/" $2}')"
width=11
pad=$(( (width - ${#val}) / 2 ))
printf "%*s%s%*s\n" $pad "" "$val" $pad ""
