source recipes/helpers/install.sh

function run {
  exit_if_installed fish
  install
}

function update_config {
  mkdir -p $HOME/.config/fish
  cp recipes/fish/init/config.fish $HOME/.config/fish
}

function install_debian {
  exit 0
}

function install_macos {
  brew install fish
}

run
