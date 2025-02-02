#!/usr/bin/env bash

selected=$(find ~/Programming ~/.dotfiles -mindepth 0 -maxdepth 1 -type d | fzf)

if [[ -z $selected ]]; then
    exit 0
fi

echo $selected
