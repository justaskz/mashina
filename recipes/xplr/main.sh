source "$MASHINA_SOURCE/recipes/helpers/main.sh"

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
  # # wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux.tar.gz
  # wget https://github.com/sayanarijit/xplr/releases/latest/download/xplr-linux-aarch64.tar.gz
  # tar -xzvf xplr*.tar.gz

  # ln -sf "$HOME/xplr" "$MASHINA_BIN/xplr"
}

function install_macos {
  brew install xplr
}

run
