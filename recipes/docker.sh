source recipes/helpers/main.sh

function run {
  exit_if_installed docker
  install
}

function install_debian {
  sudo snap install docker
}

run
