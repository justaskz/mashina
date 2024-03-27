source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed zellij
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/zellij"
  mkdir -p "$CONFIG_DIR" "$CONFIG_DIR/layouts"
  ln -sf "$MASHINA_SOURCE/recipes/zellij/config/config.kdl" "$CONFIG_DIR/config.kdl"
  ln -sf "$MASHINA_SOURCE/recipes/zellij/config/layouts/default.kdl" "$CONFIG_DIR/layouts/default.kdl"
  touch "$CONFIG_DIR/layouts/default.swap.kdl"
}

function install_debian {
  local ARCH="$(uname -m)"
  local VERSION="0.39.2"
  local BASE_NAME="zellij-$ARCH-unknown-linux-musl"
  local URL="https://github.com/zellij-org/zellij/releases/download/v$VERSION/$BASE_NAME.tar.gz"

  wget -P "$MASHINA_TMP" "$URL"
  mkdir -p "$MASHINA_OPT/$BASE_NAME"
  tar -xvf "$MASHINA_TMP/$BASE_NAME.tar.gz" --directory "$MASHINA_OPT/$BASE_NAME"
  rm "$MASHINA_TMP/$BASE_NAME.tar.gz"
  ln -sf "$MASHINA_OPT/$BASE_NAME/zellij" "$MASHINA_BIN"
}

function install_macos {
  exit 0
}

run
