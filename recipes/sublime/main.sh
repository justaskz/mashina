source recipes/helpers/install.sh

function run {
  exit_if_installed subl
  install
}

function install_macos {
  SUBLIME_HOME="$HOME/Library/Application Support/Sublime Text"
  PACKAGE_CONTROL_PATH="$SUBLIME_HOME/Installed Packages"

  mkdir -p "$PACKAGE_CONTROL_PATH"
  wget -P "$PACKAGE_CONTROL_PATH" "http://sublime.wbond.net/Package%20Control.sublime-package"
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "$MASHINA_BIN/subl"

  # remove default sidebar context menu
  DEFAULT_PACKAGE="$SUBLIME_HOME/Packages/Default"
  mkdir -p "$DEFAULT_PACKAGE"
  touch "$DEFAULT_PACKAGE/Side Bar.sublime-menu" "$DEFAULT_PACKAGE/Side Bar Mount Point.sublime-menu"

  # make sublime default editor
  defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.4;}'
}

function backup_macos {
  SUBLIME_PACKAGES="$HOME/Library/Application Support/Sublime Text/Packages"
  SUBLIME_BACKUP_FOLDER=recipes/sublime/files

  rm -rf $SUBLIME_BACKUP_FOLDER
  mkdir -p $SUBLIME_BACKUP_FOLDER

  # backup themes
  cp -r "$SUBLIME_PACKAGES/Themes" $SUBLIME_BACKUP_FOLDER

  # backup User folder
  cp -r "$SUBLIME_PACKAGES/User" $SUBLIME_BACKUP_FOLDER
}

run
