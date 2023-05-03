source recipes/helpers/main.sh

function run {
  exit_if_installed command
  install
}

function install_debian {
  exit 0
}

function install_macos {
  # books_manager
  # inv
  # projectile
  # syncros
  ln -sf $HOME/repos/syncros/bin/syncros $MASHINA_BIN
  exit 0
}

run
