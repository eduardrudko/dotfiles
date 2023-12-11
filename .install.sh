#!/usr/bin/env zsh
main() {
  if [ -z "${ZSH_VERSION:-}" ]; then
    abort "ZShell is required in order to run this script"
  fi

  if [[ "$OSTYPE" == "darwin"* ]]; then
    if ! is_runnable brew; then
      abort "Homebrew is required in order to run this script"
    fi
  fi
  
  if ! is_runnable git; then
    abort "Git is required in order to run this script"
  fi
  
  SCRIPTPATH="${0:a:h}"
  
  echo "== Updating git submodules =="
  
  config -C "$SCRIPTPATH" submodule update --init
}


abort() {
  printf "%s\n" "$@"
  exit 1
}

is_runnable() {
  command -v "$@" >/dev/null 2>&1
}

main "%@"; exit
