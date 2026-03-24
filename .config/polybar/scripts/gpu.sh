#!/bin/bash
gpu=$(nvidia-smi --query-gpu=utilization.gpu --format=csv,noheader,nounits | awk '{printf "%.0f", $1}')
temp=$(nvidia-smi --query-gpu=temperature.gpu --format=csv,noheader,nounits | awk '{printf "%.0f°C", $1}')
val="󰢮 ${gpu}%|󰔏${temp}"
width=11
pad=$(( (width - ${#val}) / 2 ))
printf "%*s%s%*s\n" $pad "" "$val" $pad ""
