source recipes/helpers/install.sh

function run {
  exit_if_installed cargo
  install
}

function update_config {
  ln -s $HOME/.cargo/bin/* $MASHINA_BIN
}

function install {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

run
