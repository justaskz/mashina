source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  update_config
  exit_if_installed yazi
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/yazi"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/yazi/config/yazi.toml" "$CONFIG_DIR"
}

function install_debian {
  local ARCH="$(uname -m)"
  local VERSION="0.2.4"
  local BASE_NAME="yazi-$ARCH-unknown-linux-gnu"
  local URL="https://github.com/sxyazi/yazi/releases/download/v$VERSION/$BASE_NAME.zip"

  rm -rf "$MASHINA_TMP"/yazi*
  wget -P "$MASHINA_TMP" "$URL"
  unzip "$MASHINA_TMP/"yazi*.zip -d "$MASHINA_OPT"
  ln -sf "$MASHINA_OPT/$BASE_NAME/yazi" "$MASHINA_BIN"
}

function install_macos {
  exit 0
}

run
