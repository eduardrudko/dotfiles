#!/usr/bin/zsh
abort() {
  printf "%s\n" "$@"
  exit 1
}

if [ -z "${ZSH_VERSION:-}" ]; then
  abort "ZShell is required in order to run this script"
fi

is_runnable() {
  command -v "$@" >/dev/null 2>&1
}

if [[ "$OSTYPE" == "darwin"* ]]; then
  if ! is_runnable brew; then
    abort "Homebrew is required in order to run this script"
  fi
fi

if ! is_runnable git; then
  abort "Git is required in order to run this script"
fi

if ! is_runnable curl; then
  abort "Curl is required in order to run this script"
fi

SCRIPTPATH="${0:a:h}"

config() {
  git --git-dir="$HOME/.cfg/" --work-tree="$HOME" "$@"
}

if [ -z "$SKIP_PACKAGES" ]; then
  echo "== Installing packages =="

  if is_runnable brew; then
    brew install "$(cat "$SCRIPTPATH"/.homebrew_packages)"
  elif is_runnable apt-get; then
    sudo apt-get install -y "$(cat "$SCRIPTPATH"/.apt-get_packages)"
  else
    abort "Don't know how to install packages on this platform. Aborting..."
  fi
fi

echo "== Installing modules =="
for file in "$SCRIPTPATH"/.modules/*/install.sh; do
  source "$file"
done

echo "== Installing submodules =="
config -C "$SCRIPTPATH" submodule update --init
