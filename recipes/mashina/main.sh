#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  install
}

function install {
  cp recipes/mashina/dotfiles/.profile $HOME
  source $HOME/.profile
  source recipes/mashina/lib/init.sh

  mkdir -p $MASHINA_ROOT
  mkdir -p $MASHINA_ROOT/scripts
  cp recipes/mashina/lib/main.sh $MASHINA_ROOT/main.sh
  cp recipes/mashina/lib/init.sh $MASHINA_ROOT/scripts/init.sh
  cp recipes/mashina/lib/aliases.sh $MASHINA_ROOT/scripts/aliases.sh

  for FILE in recipes/mashina/functions/*.sh; do
    if [ -a $FILE ]; then cp $FILE $MASHINA_FUNCTIONS; fi
  done
}

run
