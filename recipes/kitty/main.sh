source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed kitty
  install
}

function update_config {
  local CONFIG="$GLOBAL_CONFIG/kitty"
  mkdir -p $CONFIG
  ln -sf $MASHINA_SOURCE/recipes/kitty/config/kitty.conf $CONFIG

  ln -sf "$MASHINA_SOURCE/recipes/kitty/config/macos-launch-services-cmdline" $CONFIG
  ln -sf "$MASHINA_SOURCE/recipes/kitty/config/themes/theme_light.conf" $CONFIG
  ln -sf "$MASHINA_SOURCE/recipes/kitty/config/themes/theme_dark.conf" $CONFIG
  ln -sf "$MASHINA_SOURCE/recipes/kitty/config/themes/theme_dev.conf" $CONFIG
  ln -sf "$MASHINA_SOURCE/recipes/kitty/config/themes/theme_gruvbox.conf" $CONFIG
  ln -sf "$MASHINA_SOURCE/recipes/kitty/config/themes/theme_bliss.conf" $CONFIG
}

function install_debian {
  exit 0
}

function install_macos {
  brew install kitty

  # REMOVE MACOS KEYMAPS
  # go to macos keyboard shortcut settings and create custom shortcut for kitty
  # Quit kitty => <Ctrl+Shift+F12>
  # New Tab => <Ctrl+Shift+F12>
  # New Window => <Ctrl+Shift+F12>
  # Minimize => <Ctrl+Shift+F12>
  # Close OS Window => <Ctrl+Shift+F12>

  # New OS Window => <Super+Shift+N>
  # Change toggle => Settings -> Keyboard shortcuts -> Keyboard -> Move focus to the next window -> Change to super+§

  # INSTALL FONT
  # brew tap homebrew/cask-fonts
  # brew install --cask font-source-code-pro-for-powerline

  # https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/NerdFontsSymbolsOnly.zip

  # CHANGE ICON
  # https://github.com/k0nserv/kitty-icon/blob/main/README.md
  git clone --depth 1 https://github.com/k0nserv/kitty-icon.git $MASHINA_OPT/kitty-icon
}

function build_from_source {
  brew install pkg-config
  brew install harfbuzz
  brew install zlib
  brew install libpng
  brew install lcms2
  brew install librsync
  brew install openssl

  git clone --depth=1 git@github.com:kovidgoyal/kitty.git $MASHINA_OPT/kitty
  cd $MASHINA_OPT/kitty
  python3 -m pip install -r docs/requirements.txt && make docs
  LDFLAGS=-L/opt/homebrew/lib make app
}

run
