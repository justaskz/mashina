source recipes/helpers/install.sh

function run {
  exit_if_installed ansible
  install
}

function install {
  pip install --user ansible==2.10.7
  ln -s $HOME/.local/bin/* $MASHINA_BIN
}

run
