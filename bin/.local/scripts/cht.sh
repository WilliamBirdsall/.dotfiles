#!/usr/bin/env bash

langs=$(echo "c javascript python rust typescript" | tr " " "\n")
selected=$(echo "$langs" | fzf)

read -p "Enter query: " query

tmux split-window -v bash -c "curl -s cht.sh/$selected/$(echo "$query" | tr " " "+") | less"

