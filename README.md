# Installation:
## MacOS
1. Install iTerm2 - https://iterm2.com/
2. Install homebrew - https://brew.sh/
4. Install the following system packages: `git`, `curl`, `zsh`
5. Navigate to `$HOME`
6. Run the following git commands:  
`git clone --bare --recursive https://github.com/eduardrudko/dotfiles.git $HOME/.cfg` - to clone bare configuration repository  
`git --git-dir=$HOME/.cfg/ --work-tree=$HOME checkout -f` - to checkout the actual snapshot of the dotfiles  
`git --git-dir=$HOME/.cfg/ --work-tree=$HOME config --local status.showUntrackedFiles no` - to hide untracked files from working dir
7. Run install script: `./.install.sh`
8. Fully quit iTerm2 (Cmd+Q) and reopen it - the install script points it at `.iterm2/com.googlecode.iterm2.plist`, which sets the profile, colors and font. iTerm2 only picks this up on a full relaunch, not a plain window reload.
9. If the powerlevel10k prompt shows boxes or `?` instead of icons, the Nerd Font (`font-meslo-lg-nerd-font`, installed via `.homebrew_packages`) isn't active yet - check Preferences > Profiles > Eduard > Text and confirm the font resolves, then relaunch iTerm2 again.

## Linux based systems
TODO

# Add a new system package:
Append a package name to the end of line separating it with a space to any of these files depending on your system:  
`.apt-get_packages` - for linux based system  
`.homebrew_packages` - for macos

# Add a new module:
1. Go to `$HOME`
2. Create a directory `.modules/{{priority}}-{{module_name}}`, e.g. `.modules/60-iterm2` - the numeric prefix controls run order
3. Add an `install.sh` inside it - `./.install.sh` sources every `.modules/*/install.sh` automatically, in numeric order

# Add a new submodule:
1. Go to `$HOME`
2. Run `config submodule add https://github.com/{{submodule_name}}.git .{{submodule_path}}/{{submodule_name}}`  
3. Set submodule to be shallow `config config -f .gitmodules submodule..{{submodule_path}}/{{submodule_name}}.shallow true`

# Docker
`docker build -f .dockerfile -t my_env .`

## Test changes before pushing them:
`docker build --no-cache -f .test.dockerfile -t my_test_env .`

## TODO List:
- Add global gitignore with IDE related files.
