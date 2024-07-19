source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  update_config
  exit_if_installed cargo
  install
}

function update_config {
  ln -sf "$MASHINA_SOURCE/recipes/rust/init/rust.sh" "$MASHINA_INIT"
}

function install {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

run
