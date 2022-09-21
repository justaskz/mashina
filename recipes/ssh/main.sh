source recipes/helpers/main.sh

function run {
  install
}

function install_debian {
  cp recipes/ssh/dotfiles/rc $HOME/.ssh
}

function install_macos {
  exit 0
}

run
