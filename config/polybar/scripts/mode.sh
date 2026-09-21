#!/usr/bin/env bash
while true; do
    mode=$(i3-msg -t get_tree | jq 'recurse(.nodes[]; .nodes) | select(.focused) | .fullscreen_mode' 2>/dev/null)

    if [ "$mode" = "1" ]; then
        polybar-msg cmd hide 
    else
        polybar-msg cmd show
    fi

    sleep 0.5
done
