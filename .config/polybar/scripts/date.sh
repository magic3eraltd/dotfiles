#!/bin/bash

day_name=$(LC_TIME=C date +%a)
day=$(date +%-d)
time=$(date +%H:%M)

get_ordinal() {
    case "$1" in
        11|12|13) echo "${1}th" ;;
        *1) echo "${1}st" ;;
        *2) echo "${1}nd" ;;
        *3) echo "${1}rd" ;;
        *)  echo "${1}th" ;;
    esac
}

echo "$day_name $(get_ordinal "$day") | $time"
