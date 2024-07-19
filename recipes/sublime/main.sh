source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  update_config
  exit_if_installed subl
  install
}

function update_config {
  ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" "$MASHINA_BIN/subl"
}

function install_macos {
  local SUBLIME_HOME="$HOME/Library/Application Support/Sublime Text"
  local SUBLIME_PACKAGES_PATH="$SUBLIME_HOME/Packages"
  local PACKAGE_CONTROL_PATH="$SUBLIME_HOME/Installed Packages"
  local SUBLIME_SOURCE_FOLDER="$MASHINA_SOURCE/recipes/sublime/files"

  # install package control
  mkdir -p "$PACKAGE_CONTROL_PATH"
  wget -P "$PACKAGE_CONTROL_PATH" "http://sublime.wbond.net/Package%20Control.sublime-package"

  #
  rm -rf "$SUBLIME_PACKAGES_PATH/User"
  ln -sf "$SUBLIME_SOURCE_FOLDER/User" "$SUBLIME_PACKAGES_PATH/User"

  # remove default sidebar context menu
  local DEFAULT_PACKAGE="$SUBLIME_PACKAGES_PATH/Default"
  mkdir -p "$DEFAULT_PACKAGE"
  touch "$DEFAULT_PACKAGE/Side Bar.sublime-menu" "$DEFAULT_PACKAGE/Side Bar Mount Point.sublime-menu"

  # make sublime default editor
  defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.4;}'

  # install custom packages
  git clone git@github.com:justaskz/basic_format.git "$SUBLIME_PACKAGES_PATH/basic_format"
  rm -rf "$SUBLIME_PACKAGES_PATH/basic_format/.git"

  git clone git@github.com:justaskz/SendCode.git "$SUBLIME_PACKAGES_PATH/SendCode"
  rm -rf "$SUBLIME_PACKAGES_PATH/SendCode/.git"

  git clone git@github.com:sporto/rails-go-to-spec-sublime.git "$SUBLIME_PACKAGES_PATH/RailsGoToSpec"
  rm -rf "$SUBLIME_PACKAGES_PATH/RailsGoToSpec/.git"

  git clone git@github.com:justaskz/hashi.git "$SUBLIME_PACKAGES_PATH/hashi"
  rm -rf "$SUBLIME_PACKAGES_PATH/hashi/.git"

  # go to macos keyboard shortcut settings and create custom shortcut for sublime
  # Quit Sublime Text => ^=
}

function set_as_default_editor {
  brew install duti

  duti -s com.sublimetext.4 .rb all
  duti -s com.sublimetext.4 .erb all
  duti -s com.sublimetext.4 .json all
}

# function install_macos2 {
#   SUBLIME_HOME="$HOME/Library/Application Support/Sublime Text"
#   PACKAGE_CONTROL_PATH="$SUBLIME_HOME/Installed Packages"
#   SUBLIME_BACKUP_FOLDER="recipes/sublime/files"

#   # install package control
#   mkdir -p "$PACKAGE_CONTROL_PATH"
#   wget -P "$PACKAGE_CONTROL_PATH" "http://sublime.wbond.net/Package%20Control.sublime-package"

#   # move settings
#   cp -r "$SUBLIME_BACKUP_FOLDER/Themes" "$SUBLIME_HOME/Packages"
#   cp -r "$SUBLIME_BACKUP_FOLDER/User" "$SUBLIME_HOME/Packages"

#   # remove default sidebar context menu
#   DEFAULT_PACKAGE="$SUBLIME_HOME/Packages/Default"
#   mkdir -p "$DEFAULT_PACKAGE"
#   touch "$DEFAULT_PACKAGE/Side Bar.sublime-menu" "$DEFAULT_PACKAGE/Side Bar Mount Point.sublime-menu"

#   # make sublime default editor
#   defaults write com.apple.LaunchServices/com.apple.launchservices.secure LSHandlers -array-add '{LSHandlerContentType=public.plain-text;LSHandlerRoleAll=com.sublimetext.4;}'

#   # go to macos keyboard shortcut settings and create custom shortcut for sublime
#   # Quit Sublime Text => ^=
# }

# function backup_macos {
#   SUBLIME_PACKAGES="$HOME/Library/Application Support/Sublime Text/Packages"
#   SUBLIME_BACKUP_FOLDER=recipes/sublime/files

#   rm -rf $SUBLIME_BACKUP_FOLDER
#   mkdir -p $SUBLIME_BACKUP_FOLDER

#   # backup themes
#   cp -r "$SUBLIME_PACKAGES/Themes" $SUBLIME_BACKUP_FOLDER

#   # backup User folder
#   cp -r "$SUBLIME_PACKAGES/User" $SUBLIME_BACKUP_FOLDER
# }

run
