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
  cp recipes/kitty/dotfiles/custom_theme.conf $KITTY_HOME
  # cp recipes/kitty/dotfiles/test_theme.conf $KITTY_HOME
}

function install_debian {
  exit 0
}

function install_macos {
  brew install kitty

  # CUSTOM
  # curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
  # ln -s /Applications/kitty.app/Contents/MacOS/kitty $MASCHINA_BIN

  # change icon
  # https://github.com/k0nserv/kitty-icon/blob/main/README.md
  git clone --depth 1 https://github.com/k0nserv/kitty-icon.git $MASHINA_OPT/kitty-icon
}

run
