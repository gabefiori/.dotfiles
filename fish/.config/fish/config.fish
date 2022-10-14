set -U fish_user_paths /opt/homebrew/bin/ $fish_user_paths
set -U fish_user_paths $HOME/.cargo/bin/ $fish_user_paths

alias sp='cd "$(find ~/projects/ -mindepth 1 -maxdepth 1 -type d | fzf)"'
alias ll="ls -l"
alias lla="ll -a"
alias g="git"
alias cht="~/scripts/tmux-cht.sh"
alias ts="~/scripts/tmux-sessionizer.sh"
alias vim="nvim"
alias cat="bat"

if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

