set fish_greeting ""
set -gx EDITOR nvim
set -U fish_user_paths /opt/homebrew/bin/ $fish_user_paths
set -U fish_user_paths $HOME/.cargo/bin/ $fish_user_paths
set -U fish_user_paths /usr/local/go/bin $fish_user_paths
set -U fish_user_paths $HOME/go/bin $fish_user_paths

alias ll "ls -l"
alias g "git"
alias gu "gitui"
alias vim "nvim"

if type -q bat
    alias cat "bat"
end

if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end

bind \cY accept-autosuggestion
bind \cE edit_command_buffer

if test -d ~/.asdf
    source ~/.asdf/asdf.fish
end

zoxide init --cmd cd fish | source
starship init fish | source
