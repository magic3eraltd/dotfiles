#!/bin/bash

# Поточний місяць і рік
month=$(date +%m)
year=$(date +%Y)
today=$(date +%-d)
month_name=$(LC_TIME=C date +"%B %Y")

# Генеруємо календар
cal_output=$(cal $month $year)

# Форматуємо для rofi — підсвічуємо сьогодні
output="    $month_name\n"
output+="$(echo "$cal_output" | tail -n +2 | sed "s/\b$today\b/[$today]/")"

echo -e "$output" | rofi -dmenu \
    -p "" \
    -no-custom \
    -format "" \
    -theme-str '
    window { width: 220px; }
    listview { lines: 8; font: "JetBrainsMono Nerd Font 11"; }
    inputbar { enabled: false; }
    element { padding: 2px 10px; }
    element selected { background-color: #2A2F38; text-color: #E6E9EF; }
    '
