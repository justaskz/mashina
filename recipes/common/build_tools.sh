source recipes/helpers/install.sh

function run {
  install
}

function install_debian {
  sudo apt update
  sudo apt -y install software-properties-common \
    build-essential \
    apt-transport-https
}

function install_macos {
  brew install wget
}

run
