source recipes/helpers/install.sh

function run {
  exit_if_installed ansible
  install
}

function install_debian {
  apt-add-repository --yes --update ppa:ansible/ansible
  apt -y install ansible
}

function install_macos {
  exit 0
}

run
