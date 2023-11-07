source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed hx
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/helix"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/helix/config/config.toml" "$CONFIG_DIR/config.toml"
  ln -sf "$MASHINA_SOURCE/recipes/helix/config/languages.toml" "$CONFIG_DIR/languages.toml"
}

function install_debian {
  exit 0
}

function install_macos {
  brew install helix
}

run
