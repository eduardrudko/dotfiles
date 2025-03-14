# Installation:
## MacOS
1. Install iTerm2 - https://iterm2.com/
2. Install homebrew - https://brew.sh/
4. Install the following system packages: `git`, `curl`, `zsh`
5. Navigate to `$HOME`
6. Run the following git commands:  
`git clone --bare --recursive https://github.com/eduardrudko/dotfiles.git $HOME/.cfg` - to clone bare configuration repository  
`git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f` - to checkout the actual configuration files  
`git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no` - to hide untracked files from working dir
7. Run install script: `sh .install.sh`
8. Reload your terminal app

## Linux based systems
TODO

# Add new system package:
Append a package name to the end of line separating it with a space to any of these files depending on your system:  
`.apt-get_packages` - for linux based system  
`.homebrew_packages` - for macos

# Add a new vim plugin:
1. Run `config submodule add https://github.com/{{vim_plugin_path}}.git ./.vim/bundle/{{vim_plagin_name}}`  
2. Set the submodule to be shallow in `.gitmodules`

# Docker
`docker build -f .dockerfile -t my_env .`

## Test changes before pushing them:
`docker build --no-cache -f .test.dockerfile -t my_test_env .`
