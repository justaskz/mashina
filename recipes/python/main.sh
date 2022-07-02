source recipes/helpers/install.sh

function run {
  exit_if_installed python
  install
}

function install_debian {
  exit 0
}

function install_macos {
  exit 0
}

run
