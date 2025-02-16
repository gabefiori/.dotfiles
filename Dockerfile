FROM ubuntu:latest AS base

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y software-properties-common ca-certificates \
    fish bat silversearcher-ag ripgrep git curl stow build-essential ninja-build gettext cmake make unzip curl libpcre2-dev vim tar && \
    rm -rf /var/lib/apt/lists/* && \
    update-ca-certificates

RUN git clone https://github.com/neovim/neovim --depth 1 && \
	cd neovim && git checkout nightly && \ 
    make CMAKE_BUILD_TYPE=RelWithDebInfo && make install

FROM base AS setup
COPY scripts/scripts/search-dirs.sh /usr/bin/search-dirs

ENV PATH="/home/devuser/.local/bin:$PATH"
RUN useradd -ms /usr/bin/fish devuser

USER devuser
WORKDIR /home/devuser

COPY scripts/scripts/post-build.fish /home/devuser/post-build

RUN curl https://mise.run | sh

COPY --chown=devuser:devuser . /home/devuser/.dotfiles/

RUN cd /home/devuser/.dotfiles/ && stow fish && stow nvim && stow starship

CMD ["tail", "-f", "/dev/null"]