from ubuntu:24.04

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
  git \
  sudo \
  vim \
  zsh

RUN git clone --bare https://github.com/eduardrudko/dotfiles.git $HOME/.cfg
RUN git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout
RUN rm $HOME/.install.sh
COPY .install.sh /root/.install.sh
RUN chmod +x $HOME/.install.sh
RUN $HOME/.install.sh

WORKDIR /root
ENTRYPOINT zsh
