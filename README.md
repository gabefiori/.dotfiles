# Dotfiles

I'm currently using MacOS and Ubuntu. These config files should work for both systems.
You can manage them with [GNU Stow](https://www.gnu.org/software/stow/):

```sh
stow */             # set config files of all packages

stow <package name> # set config files of a specific package
```

## Info
- Terminal: [Alacritty](https://alacritty.org/);
- Shell: [ZSH](https://www.zsh.org/);
- Multiplexer: [Tmux](https://github.com/tmux/tmux);
- Editor: [Neovim](https://neovim.io/);

## Neovim:
To manage neovim plugins, you will need [Packer](https://github.com/wbthomason/packer.nvim#quickstart) installed.

## ZSH:
To manage ZSH plugins and themes, you will need [Oh My Zsh](https://ohmyz.sh/) installed.

## Tmux italic problem
To enable italic text on tmux make sure to:
```sh
tic tmux/screen-256color.terminfo
```

see more in this [manual]:(https://gist.github.com/gutoyr/4192af1aced7a1b555df06bd3781a722)
