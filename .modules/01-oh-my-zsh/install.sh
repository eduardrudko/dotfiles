#!/usr/bin/zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh

mv "$HOME/.zshrc.pre-oh-my-zsh" "$HOME/.zshrc"

touch .zsh/assets/.zshrc_t_env .zsh/assets/.zshrc_t_aliases
