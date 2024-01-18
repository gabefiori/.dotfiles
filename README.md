# Dotfiles
I'm currently using Ubuntu. You can manage my configs with [GNU Stow](https://www.gnu.org/software/stow/):

```sh
stow */             # set config files of all packages

stow <package name> # set config files of a specific package
```

## Info:
- Window Manager: [i3](https://i3wm.org/);
- Terminal: [Kitty](https://sw.kovidgoyal.net/kitty/);
- Shell: [Fish](https://fishshell.com/);
- Shell Prompt: [Startship](https://starship.rs);
- Multiplexer: [Tmux](https://github.com/tmux/tmux);
- Editor: [Neovim](https://neovim.io/);

## Fish
You should install a plugin manager for [Fish](https://fishshell.com/).
See [Fisher](https://github.com/jorgebucaran/fisher).

## Tmux
You should install a plugin manager for [Tmux](https://github.com/tmux/tmux).
See [TPM](https://github.com/tmux-plugins/tpm).

## ZSH:
To enable syntax highlighting
```sh
cd $HOME
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```
