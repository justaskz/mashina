source recipes/helpers/main.sh

function run {
  exit_if_installed snap
  install
}

function install_debian {
  apt install snapd
}

function install_macos {
  exit 0
}

run
