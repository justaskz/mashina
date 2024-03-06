source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed helix
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/helix"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/helix/config/config.toml" "$CONFIG_DIR/config.toml"
  ln -sf "$MASHINA_SOURCE/recipes/helix/config/languages.toml" "$CONFIG_DIR/languages.toml"
}

function install_debian {
  # snap install helix --classic
  exit 0
}

function install_macos {
  brew install helix
}

# function manual {
#   # does not work well, missing libs
#   local VERSION="23.10"
#   local URL="https://github.com/helix-editor/helix/releases/download/$VERSION/helix-$VERSION-x86_64-linux.tar.xz"
#   local TMP_FILE="$MASHINA_TMP/helix.tar.xz"
#   local OPT_PATH="$MASHINA_OPT/helix"

#   wget $URL -O $TMP_FILE
#   mkdir -p $OPT_PATH
#   unxz $TMP_FILE
#   tar -xf "$MASHINA_TMP/helix.tar" --directory $OPT_PATH --strip-components=1
#   rm -rf "$MASHINA_TMP/helix.tar"

#   ln -sf "$OPT_PATH/hx" "$MASHINA_BIN"
# }

run
