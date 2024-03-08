UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S),Linux)
    OS := ubuntu
else
    $(error This Makefile is intended for Ubuntu only. Aborting.)
endif

PKG_MANAGER = apt-get
INSTALL = sudo $(PKG_MANAGER) install -y
UPDATE = sudo $(PKG_MANAGER) update
PPA_ADD = sudo add-apt-repository
PPA_CHECK = grep -q "$(1)" /etc/apt/sources.list /etc/apt/sources.list.d/

#### TOOLS ####

.PHONY: install-prerequisites
install-prerequisites:
	@echo Installing prerequisites...
	$(UPDATE)
	$(INSTALL) git stow build-essential ninja-build gettext cmake unzip curl libpcre2-dev vim tar

.PHONY: install-neovim
install-neovim: install-prerequisites
	@echo Installing Neovim...
	git clone https://github.com/neovim/neovim
	cd neovim && git checkout nightly && make CMAKE_BUILD_TYPE=RelWithDebInfo && sudo make install
	rm -rf neovim
	stow nvim

.PHONY: install-kitty
install-kitty:
	@echo Installing Kitty...
	curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin installer=nightly
	sudo ln -sf ~/.local/kitty.app/bin/kitty /usr/bin/kitty
	sudo ln -sf ~/.local/kitty.app/bin/kitten /usr/bin/kitten
	stow kitty

.PHONY: install-tmux
install-tmux:
	@echo Installing Tmux...
	$(INSTALL) tmux
	stow tmux

.PHONY: install-starship
install-starship:
	@echo Installing Starship...
	curl -fsSL https://starship.rs/install.sh | bash

.PHONY: install-fish
install-fish:
	@echo Installing Fish shell...
	$(PPA_ADD) ppa:fish-shell/release-3
	$(UPDATE)
	$(INSTALL) fish

.PHONY: install-fisher
install-fisher: 
	@echo "Installing Fisher..."
	@if ! command -v fish > /dev/null; then \
		echo "Fish shell is not installed. Installing Fish shell..."; \
		$(MAKE) install-fish; \
	fi
	fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher"

.PHONY: install-asdf
install-asdf:
	@echo Installing asdf...
	@if ! command -v fish > /dev/null; then \
		echo "Fish shell is not installed. Installing Fish shell..."; \
		$(MAKE) install-fish; \
	fi
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.14.0
	@fish -c "source ~/.asdf/asdf.fish"

.PHONY: install-fonts
install-fonts:
	@echo "Check https://berkeleygraphics.com/typefaces/berkeley-mono/"

.PHONY: install-tools
install-all: install-prerequisites install-fish install-neovim install-kitty \ 
	 install-fisher install-starship

#### RUNTIMES/LANGUAGES ####
.PHONY: install-python
install-python:
	@echo Installing Python...
	$(INSTALL) python3 python3-pip
	pip3 install --upgrade pip
	pip3 install pynvim

.PHONY: install-nodejs
install-nodejs:
	@echo "Installing nodejs..."
	@if ! command -v asdf > /dev/null; then \
		echo "asdf is not installed. Installing asdf..."; \
		$(MAKE) install-asdf; \
	fi
	@fish -c 'asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git && \
	asdf install nodejs latest && \
	asdf global nodejs latest && \
	corepack enable && \
	corepack prepare pnpm@latest --activate && \
	asdf reshim nodejs'

.PHONY: install-golang
install-golang:
	@echo "Installing Golang..."
	curl -fsSL -o go.tar.gz https://go.dev/dl/go1.22.0.linux-amd64.tar.gz && \
	sudo rm -rf /usr/local/go && \
	sudo tar -C /usr/local -xzf go.tar.gz && \
	rm go.tar.gz

.PHONY: install-lang
install-lang: install-python install-nodejs install-golang

.PHONY: install-all
install-all: install-tools install-lang

.PHONY: help
help:
	@echo "Available targets:"
	@echo "install-all           - Install all tools and runtimes/languages"
	@echo "install-tools         - Install all tools"
	@echo "install-lang          - Install all runtimes/languages"
	@echo "install-prerequisites - Install all prerequisites"
	@echo "install-fish          - Install Fish shell"
	@echo "install-fisher        - Install Fisher"
	@echo "install-asdf          - Install asdf"
	@echo "install-neovim        - Install Neovim"
	@echo "install-kitty         - Install Kitty"
	@echo "install-tmux          - Install Tmux"
	@echo "install-starship      - Install Starship"
	@echo "install-python        - Install Python"
	@echo "install-nodejs        - Install Node.js"
	@echo "install-golang        - Install Golang"
	@echo "help                  - Show this help message"
