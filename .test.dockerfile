from ubuntu:24.04

ENV TERM=xterm-256color

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
  git \
  sudo \
  curl \
  zsh

WORKDIR /root

# dotfiles
RUN git clone --bare --recursive https://github.com/eduardrudko/dotfiles.git $HOME/.cfg
RUN git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f
RUN git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no

# Overwrites with local copies for quick test
RUN rm $HOME/.install.sh 
COPY .install.sh .install.sh
RUN rm -rf .modules/
COPY .modules/ .modules/
RUN rm $HOME/.zshrc
COPY .zshrc .zshrc
RUN rm $HOME/.apt-get_packages
COPY .apt-get_packages .apt-get_packages

RUN chmod +x $HOME/.install.sh

RUN $HOME/.install.sh

ENTRYPOINT zsh
