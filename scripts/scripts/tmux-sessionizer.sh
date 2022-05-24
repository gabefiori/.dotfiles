#!/usr/bin/env bash

if [[ $# -eq 1 ]]; then
    selected=$1
else
    selected=`cat ~/scripts/.tmux-sessionizer-list | fzf`
fi

if [[ -z $selected ]]; then
    exit 0
fi

tmux_running=$(pgrep tmux)

if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected -c $HOME
    exit 0
fi

if ! tmux has-session -t=$selected 2> /dev/null; then
    tmux new-session -ds $selected -c $HOME
fi

tmux switch-client -t $selected
