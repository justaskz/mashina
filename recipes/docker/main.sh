source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  exit_if_installed docker
  install
}

function install_debian {
  exit 0
}

function install_macos {
  softwareupdate --install-rosetta
  # download docker from https://docs.docker.com/desktop/mac/install/
}

run
