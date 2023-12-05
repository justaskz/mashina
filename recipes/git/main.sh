source recipes/helpers/main.sh

function run {
  update_config
  install
}

function update_config {
  local CONFIG_DIR="$GLOBAL_CONFIG/git"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/git/config/config" "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/git/config/config-nordsec" "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/git/config/gitignore" "$CONFIG_DIR"
}

function install_macos {
  brew install git
}

function install_debian {
  local VERSION="2.39.0"
  local URL="https://mirrors.edge.kernel.org/pub/software/scm/git/git-$VERSION.tar.gz"
  local NAME="git"
  download_and_install $NAME $URL
}

run
