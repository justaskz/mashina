# source recipes/helpers/main.sh

function run {
  install
}

function install {
  source recipes/mashina/lib/mashina_env.sh

  mkdir -p $MASHINA_ROOT
  mkdir -p $MASHINA_BIN
  mkdir -p $MASHINA_INIT
  mkdir -p $MASHINA_OPT
  mkdir -p $MASHINA_FUNCTIONS
  mkdir -p $MASHINA_TMP

  cp recipes/mashina/dotfiles/.bashrc $HOME
  cp recipes/mashina/dotfiles/.profile $HOME
  cp recipes/mashina/dotfiles/.zshrc $HOME
  cp recipes/mashina/lib/main.sh $MASHINA_ROOT/main.sh
  cp recipes/mashina/lib/mashina_env.sh $MASHINA_ROOT/mashina_env.sh
  cp recipes/mashina/lib/aliases.sh $MASHINA_ROOT/aliases.sh

  for FILE in recipes/mashina/functions/*.sh; do
    if [[ -a $FILE ]]; then cp $FILE $MASHINA_FUNCTIONS; fi
  done
}

run
