source recipes/helpers/main.sh

function run {
  exit_if_installed java
  install
}

function install_debian {
  apt install default-jre
}

function install_macos {
  # installation commands
}

run
