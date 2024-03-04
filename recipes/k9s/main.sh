source recipes/helpers/main.sh

VERSON="0.32.0"

function run {
  update_config
  exit_if_installed k9s
  install
}

function update_config {
  CONFIG_DIR="$GLOBAL_CONFIG/k9s"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/k9s/config/config.yaml" "$CONFIG_DIR/config.yaml"
}

function install_debian {
  PACKAGE="k9s_Linux_amd64.tar.gz"
  URL="https://github.com/derailed/k9s/releases/download/v0.32.0/$PACKAGE"

  wget -P "$MASHINA_TMP" "$URL"
  mkdir -p "$MASHINA_OPT/k9s"
  tar -xzvf "$MASHINA_TMP/$PACKAGE" -C "$MASHINA_OPT/k9s"
  rm -rf "$MASHINA_TMP/$PACKAGE"
  ln -sf "$MASHINA_OPT/k9s/k9s" $MASHINA_BIN
}

function install_macos {
  exit 0
}

run
