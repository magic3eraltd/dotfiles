#!/bin/bash
val="  $(free -m | awk '/Mem:/ {printf "%.1f/%.1fGB", $3/1024, $2/1024}')"
width=13
pad=$(( (width - ${#val}) / 2 ))
printf "%*s%s%*s\n" $pad "" "$val" $pad ""
