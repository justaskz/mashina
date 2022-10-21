source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed kitty
  install
}

function update_config {
  KITTY_HOME="$HOME/.config/kitty"
  mkdir -p $KITTY_HOME
  cp recipes/kitty/dotfiles/kitty.conf $KITTY_HOME
  cp recipes/kitty/dotfiles/macos-launch-services-cmdline $KITTY_HOME

  cp recipes/kitty/dotfiles/theme_light.conf $KITTY_HOME
  cp recipes/kitty/dotfiles/theme_dark.conf $KITTY_HOME
  cp recipes/kitty/dotfiles/theme_dev.conf $KITTY_HOME
  cp recipes/kitty/dotfiles/theme_gruvbox.conf $KITTY_HOME
}

function install_debian {
  exit 0
}

function install_macos {
  brew install kitty

  # CUSTOM INSTALL
  # curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
  # ln -s /Applications/kitty.app/Contents/MacOS/kitty $MASCHINA_BIN

  # REMOVE MACOS KEYMAPS
  # go to macos keyboard shortcut settings and create custom shortcut for kitty
  # Quit kitty => <Ctrl+Shift+F12>
  # New Tab => <Ctrl+Shift+F12>
  # Minimize => <Ctrl+Shift+F12>

  # INSTALL FONT
  brew tap homebrew/cask-fonts
  brew install --cask font-source-code-pro-for-powerline

  https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/NerdFontsSymbolsOnly.zip

  # CHANGE ICON
  # https://github.com/k0nserv/kitty-icon/blob/main/README.md
  git clone --depth 1 https://github.com/k0nserv/kitty-icon.git $MASHINA_OPT/kitty-icon
}

run
