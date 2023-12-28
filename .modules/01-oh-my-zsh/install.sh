#!/usr/bin/zsh
#
echo "=== Installling oh-my-zsh ==="

curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh
mv "$HOME/.zshrc.pre-oh-my-zsh" "$HOME/.zshrc"
