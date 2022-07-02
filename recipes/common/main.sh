function run {
  install
}

function install_debian {
  apt update
  apt -y install \
    build-essential \
    software-properties-common \
    apt-transport-https
}

function install_macos {
  brew install wget
}

run
