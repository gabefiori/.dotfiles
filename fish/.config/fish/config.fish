set fish_greeting ""

set -U fish_user_paths $HOME/.cargo/bin/ $fish_user_paths
set -U fish_user_paths /usr/local/go/bin $fish_user_paths
set -U fish_user_paths $HOME/go/bin $fish_user_paths
set -U fish_user_paths $HOME/.odin/ $fish_user_paths
set -U fish_user_paths $HOME/.local $fish_user_paths

set -gx PNPM_HOME "$HOME/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

set -gx EDITOR nvim
set -gx BAT_THEME gruvbox-dark

alias ll "ls -l"
alias vim "nvim"

function sp
    set dir (search-dirs)

    if test -n "$dir"
        cd "$dir"
    end
end

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

zoxide init --cmd cd fish | source
starship init fish | source

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
