# Dotfiles
I'm currently using MacOS and Ubuntu. These config files should work for both systems.
You can manage them with [GNU Stow](https://www.gnu.org/software/stow/):

```sh
stow */             # set config files of all packages

stow <package name> # set config files of a specific package
```

## Info:
- Window Manager: [i3](https://i3wm.org/);
- Terminal: [Alacritty](https://alacritty.org/);
- Shell: [Fish](https://fishshell.com/);
- Shell Prompt: [Startship](https://starship.rs);
- Multiplexer: [Tmux](https://github.com/tmux/tmux);
- Editor: [Neovim](https://neovim.io/);

## Fish
You should install a plugin manager for [Fish](https://fishshell.com/).
See [Fish](https://fishshell.com/).

## ZSH:
To enable syntax highlighting
```sh
cd $HOME
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
```
