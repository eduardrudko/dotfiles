from ubuntu:24.04

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

# overwrite with local copies for quick test
RUN rm $HOME/.install.sh 
COPY .install.sh .install.sh
RUN rm -rf .modules/
COPY .modules/ .modules/
RUN rm $HOME/.zshrc
COPY .zshrc .zshrc

RUN chmod +x $HOME/.install.sh

RUN $HOME/.install.sh

ENTRYPOINT zsh
