#!/usr/bin/zsh
if [[ "$OSTYPE" == "darwin"* ]]; then
  iterm2_prefs_dir="$HOME/.iterm2"
  iterm2_plist="$iterm2_prefs_dir/com.googlecode.iterm2.plist"

  if [ -f "$iterm2_plist" ]; then
    defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
    defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$iterm2_prefs_dir"

    default_guid=$(plutil -extract "Default Bookmark Guid" raw -o - "$iterm2_plist" 2>/dev/null)
    if [ -n "$default_guid" ]; then
      defaults write com.googlecode.iterm2 "Default Bookmark Guid" -string "$default_guid"
    fi

    echo "iTerm2 profile/colors/font configured - fully quit iTerm2 (Cmd+Q) and reopen it for this to take effect."
  fi
fi
