source recipes/helpers/main.sh

function run {
  exit_if_installed node
  install
}

function install_debian {
  exit 0
}

function install_macos {
  brew install node
}

run
