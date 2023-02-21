#!/usr/bin/env bash

## Assumes we are already in tmux

dir_abs_path=$(find ~/Projects -mindepth 1 -maxdepth 1 -type d | fzf)
dir_name=$(basename "$dir_abs_path" | tr . _)

if ! tmux has-session -t "$dir_name" 2> /dev/null; then
    tmux new-session -s "$dir_name" -c "$dir_name" -d
fi

tmux switch-client -t "$dir_name"
