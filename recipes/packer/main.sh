source recipes/helpers/main.sh

function run {
  exit_if_installed packer
  install
}

function install_debian {
  curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
  sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
  sudo apt-get update && sudo apt-get install -y packer
}

function install_macos {
  exit 0
}

function install_dependencies {
  packer plugins install github.com/hashicorp/vagrant
}

run
