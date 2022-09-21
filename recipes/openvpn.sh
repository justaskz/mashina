source recipes/helpers/main.sh

function run {
  exit_if_installed openvpn
  install
}

function install_debian {
  apt install openvpn
}

run
