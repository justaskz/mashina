source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed alacritty
  install
}

function install_debian {
  exit 0
}

function update_config {
  mkdir -p $HOME/.config/alacritty
  cp recipes/alacritty/dotfiles/alacritty.yml $HOME/.config/alacritty
}

function install_macos {
  git clone --depth 1 https://github.com/alacritty/alacritty.git $MASHINA_OPT/alacritty
  cd $MASHINA_OPT/alacritty
  rustup override set stable
  rustup update stable

  make app
  cp -r $MASHINA_OPT/alacritty/target/release/osx/Alacritty.app /Applications/
  ln -s /Applications/Alacritty.app/Contents/MacOS/alacritty $MASCHINA_BIN
}

run
