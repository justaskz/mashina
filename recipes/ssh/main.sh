source recipes/helpers/main.sh

function run {
  install
}

function install_debian {
  cp recipes/ssh/dotfiles/rc $HOME/.ssh
  cp recipes/ssh/functions/fix_ssh.sh $MASHINA_FUNCTIONS
}

function install_macos {
  exit 0
}

run
