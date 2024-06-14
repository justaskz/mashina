source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed syncros
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/syncros"
  mkdir -p "$CONFIG_DIR"

  ln -sf "$MASHINA_SOURCE/recipes/syncros/config/config.yaml" "$CONFIG_DIR/config.yaml"
}

function install_debian {
  exit 0
}

function install_macos {
  exit 0
}

run
