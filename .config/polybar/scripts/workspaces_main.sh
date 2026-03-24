#!/bin/bash
print_workspaces() {
    active=$(i3-msg -t get_workspaces | python3 -c "
import json,sys
ws=json.load(sys.stdin)
for w in ws:
    if w['focused']: print(w['name'])
")
    for i in 1 2 3 4 5; do
        if [ "$active" = "$i" ]; then
            echo -n "%{B#E6E9EF}%{F#0F1115} $i %{B-}%{F-}"
        else
            echo -n "%{F#C5C8CE} $i %{F-}"
        fi
    done
    echo
}

print_workspaces
i3-msg -t subscribe '["workspace"]' -m | while read -r _; do
    print_workspaces
done
