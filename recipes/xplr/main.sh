source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed xplr
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/xplr"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/xplr/config/init.lua" "$CONFIG_DIR/init.lua"
}

function install_debian {
  exit 0
}

function install_macos {
  brew install xplr
}

run