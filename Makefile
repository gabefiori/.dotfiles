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

.PHONY: install-fonts
install-fonts:
	@echo "Check https://berkeleygraphics.com/typefaces/berkeley-mono/"

.PHONY: install-tools
install-all: install-prerequisites install-fish install-neovim install-kitty \ 
	 install-fisher install-starship

.PHONY: install-all
install-all: install-tools

.PHONY: help
help:
	@echo "Available targets:"
	@echo "install-all           - Install all tools and runtimes/languages"
	@echo "install-tools         - Install all tools"
	@echo "install-lang          - Install all runtimes/languages"
	@echo "install-prerequisites - Install all prerequisites"
	@echo "install-neovim        - Install Neovim"
	@echo "install-tmux          - Install Tmux"
	@echo "help                  - Show this help message"
