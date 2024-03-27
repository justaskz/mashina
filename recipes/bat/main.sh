source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed bat
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/bat"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/bat/config/config" "$CONFIG_DIR/config"
}

function install_debian {
  local ARCH="$(uname -m)"
  local VERSION="0.24.0"
  local BASE_NAME="bat-v$VERSION-aarch64-unknown-linux-gnu"
  local URL="https://github.com/sharkdp/bat/releases/download/v$VERSION/$BASE_NAME.tar.gz"

  wget -P "$MASHINA_TMP" "$URL"
  tar -xf "$MASHINA_TMP/$BASE_NAME.tar.gz" --directory "$MASHINA_OPT"
  rm "$MASHINA_TMP/$BASE_NAME.tar.gz"
  ln -sf "$MASHINA_OPT/$BASE_NAME/bat" "$MASHINA_BIN"
}

function install_macos {
  brew install bat
}

run
