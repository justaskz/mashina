source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  update_config
  exit_if_installed hx
  install
}

function update_config {
  ln -sf "$MASHINA_SOURCE/recipes/helix/init/helix.sh" "$MASHINA_INIT"

  local CONFIG_DIR="$GLOBAL_CONFIG/helix"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/helix/config/config.toml" "$CONFIG_DIR/config.toml"
  ln -sf "$MASHINA_SOURCE/recipes/helix/config/languages.toml" "$CONFIG_DIR/languages.toml"
}

function install_debian {
  local ARCH="$(uname -m)"
  local VERSION="23.10"
  local BASE_NAME="helix-$VERSION-$ARCH-linux"
  local URL="https://github.com/helix-editor/helix/releases/download/$VERSION/$BASE_NAME.tar.xz"

  rm -rf "$MASHINA_TMP"/helix*
  wget -P "$MASHINA_TMP" "$URL"
  unxz "$MASHINA_TMP"/helix*
  tar -xf "$MASHINA_TMP/$BASE_NAME.tar" --directory "$MASHINA_OPT"
  rm "$MASHINA_TMP/$BASE_NAME.tar"
  ln -sf "$MASHINA_OPT/$BASE_NAME/hx" "$MASHINA_BIN"
}

function install_macos {
  brew install helix
}

run
