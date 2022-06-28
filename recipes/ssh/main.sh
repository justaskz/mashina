source recipes/helpers/install.sh

function run {
  install
}

function install_debian {
  cp recipes/ssh/dotfiles/rc $HOME/.ssh
}

run
