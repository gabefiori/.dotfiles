set fish_greeting ""

set -U fish_user_paths $HOME/.cargo/bin/ $fish_user_paths
set -U fish_user_paths /usr/local/go/bin $fish_user_paths
set -U fish_user_paths $HOME/go/bin $fish_user_paths
set -U fish_user_paths $HOME/.odin/ $fish_user_paths
set -U fish_user_paths $HOME/.local $fish_user_paths

set -gx EDITOR nvim
set -gx BAT_THEME gruvbox-dark

alias ll "ls -l"
alias vim "nvim"
alias k "kubectl"

if type -q bat
    alias cat "bat"
end

if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end

bind \cY accept-autosuggestion
bind \cE edit_command_buffer

if type -q mise 
    if status is-interactive
        mise activate fish | source
    else
        mise activate fish --shims | source
    end
end
