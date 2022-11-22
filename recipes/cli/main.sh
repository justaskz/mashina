source recipes/helpers/main.sh

function run {
  exit_if_installed command
  install
}

function install_debian {
  # books_manager
  # inv
  # projectile
  # syncros
  exit 0
}

function install_macos {
  exit 0
}

run
