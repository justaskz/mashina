source recipes/helpers/main.sh

function run {
  install
}

function install_macos {
  brew install iterm2

  # SETUP
  # Pref > Appearance > Theme > Minimal
  # Pref > Appearance > Windows > Show window number in title bar > Unselect
  # Pref > Appearance > Windows > Hide scrollbars
  # Pref > Appearance > Panes > 0 12
  # Pref > Advanced > Search pinch > disable
  # Pref > General > Selection > Application in terminal may access clipboard > Enabled

  # Pref > Keys: ^§ > Next Window
  # Pref > Keys: ^v > Paste: Convertpunctiation
}

function uninstall {
  brew uninstall iterm2

  rm $HOME/Library/Preferences/com.googlecode.iterm2.plist
  rm $HOME/Library/Caches/com.googlecode.iterm2
  rm -rf "$HOME/Library/Saved Application State/com.googlecode.iterm2.savedState"
}

run
