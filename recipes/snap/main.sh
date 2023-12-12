source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed snap
  install
}

function update_config {
  ln -sf "$MASHINA_SOURCE/recipes/snap/init/snap.sh" "$MASHINA_INIT"
}

function install_debian {
  sudo apt install -y snapd
}

function install_macos {
  exit 0
}

run
