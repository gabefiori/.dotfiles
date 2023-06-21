set fish_greeting ""
set -gx EDITOR nvim
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
alias lg="lazygit"

if type -q exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
end

if status is-interactive
    # Commands to run in interactive sessions can go here
end

fish_vi_key_bindings

bind -M insert \cY accept-autosuggestion

if test -d ~/.asdf
    source ~/.asdf/asdf.fish
end

starship init fish | source
