#!/usr/bin/env fish

# Go
mise install go@latest && mise use --global go@latest
source $HOME/.config/fish/config.fish

# Tools
go install golang.org/x/tools/gopls@latest
go install github.com/junegunn/fzf@latest

source $HOME/.config/fish/config.fish