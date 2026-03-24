#!/bin/bash
if ping -c 1 -W 1 1.1.1.1 >/dev/null 2>&1; then
    ip=$(ip route get 1.1.1.1 2>/dev/null | awk '{for(i=1;i<=NF;i++) if($i=="src") print $(i+1)}')
    val="󰈀 ${ip}"
else
    val="󰅛 offline"
fi
width=14
pad=$(( (width - ${#val}) / 2 ))
printf "%*s%s%*s\n" $pad "" "$val" $pad ""
