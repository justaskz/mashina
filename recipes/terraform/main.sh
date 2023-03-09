source recipes/helpers/main.sh

function run {
  exit_if_installed command
  install
}

function install_debian {
  apt install -y gpg
  wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
  apt update
  apt install -y terraform
}

function install_macos {
  brew tap hashicorp/tap
  brew install hashicorp/tap/terraform

  brew install terragrunt
}

run
