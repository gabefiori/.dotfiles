set fish_greeting ""

set -U fish_user_paths $HOME/.cargo/bin/ $fish_user_paths
set -U fish_user_paths /usr/local/go/bin $fish_user_paths
set -U fish_user_paths $HOME/go/bin $fish_user_paths
set -U fish_user_paths $HOME/.odin/ $fish_user_paths
set -U fish_user_paths $HOME/.local/bin $fish_user_paths
set -U fish_user_paths $HOME/scripts $fish_user_paths

set -gx EDITOR nvim
set -gx BAT_THEME gruvbox-dark

alias ll "ls -l"
alias vim "nvim"
alias k "kubectl"
alias dn "daily-notes"

if type -q bat
    alias cat "bat"
end

if type -q zeditor
    alias zed "zeditor"
end

if type -q exa
    alias ls "exa"
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

if type -q starship
    starship init fish | source
end
