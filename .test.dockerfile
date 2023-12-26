from ubuntu:24.04

RUN apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y \
  git \
  sudo \
  curl \
  zsh

WORKDIR /root

# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)
RUN curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > $HOME/.oh-my-zsh-install.sh
RUN chmod +x $HOME/.oh-my-zsh-install.sh
RUN $HOME/.oh-my-zsh-install.sh
RUN rm $HOME/.oh-my-zsh-install.sh
# dotfiles
RUN git clone --bare https://github.com/eduardrudko/dotfiles.git $HOME/.cfg
RUN git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f
RUN git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no
# 
RUN rm $HOME/.install.sh 
COPY .install.sh .install.sh
RUN rm -rf .modules/
COPY .modules/ .modules/
run rm $HOME/.zshrc
COPY .zshrc .zshrc
#
RUN chmod +x $HOME/.install.sh

RUN $HOME/.install.sh

ENTRYPOINT zsh
