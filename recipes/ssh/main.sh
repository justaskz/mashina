source recipes/helpers/main.sh

function run {
  install
}

function install {
  ln -sf $MASHINA_SOURCE/recipes/ssh/config/config $HOME/.ssh
  ln -sf $MASHINA_SOURCE/recipes/ssh/config/rc $HOME/.ssh
  ln -sf $MASHINA_SOURCE/recipes/ssh/functions/fix_ssh.sh $MASHINA_FUNCTIONS
  ln -sf $MASHINA_SOURCE/recipes/ssh/functions/nord_ssh.sh $MASHINA_FUNCTIONS
}

run
