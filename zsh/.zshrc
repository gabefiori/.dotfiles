export ZSH=$HOME/.oh-my-zsh
export PATH=/opt/homebrew/bin:$PATH

ZSH_THEME="func"
plugins=(
    git
    vi-mode
    docker
    docker-compose
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias sp='cd "$(find ~/projects/ -mindepth 1 -maxdepth 1 -type d | fzf)"'
alias ll="ls -l"
alias lla="ll -a"
alias g="git"
alias cht="~/scripts/tmux-cht.sh"
alias ts="~/scripts/tmux-sessionizer.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
