#!/usr/bin/zsh
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | zsh

zshrc="$HOME/.zshrc"
original_zshrc="$HOME/.zshrc.pre-oh-my-zsh"
zshrc_assets=(".zsh/assets/.zshrc_t_env" ".zsh/assets/.zshrc_t_aliases")

if [ -e "$original_zshrc" ]; then
  mv "$original_zshrc" "$zshrc"
  echo "Updated .zshrc"
fi

for zshrc_asset in "${zshrc_assets[@]}"; do
  if [ ! -e "$zshrc_asset" ]; then
    touch "$zshrc_asset"
    echo "Created $zshrc_asset"
  fi
done
