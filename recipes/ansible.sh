function run {
  install_debian
}

function install_debian {
  sudo apt-add-repository --yes --update ppa:ansible/ansible
  sudo apt -y install ansible
}

run
