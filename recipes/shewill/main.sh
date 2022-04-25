#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  install
}

function install_debian {
  cp recipes/shewill/dotfiles/.profile $HOME

  rm -rf $LOCAL_FUNCTIONS/*
  for FILE in recipes/shewill/functions/*.sh; do
    if [ -a $FILE ]; then cp $FILE $LOCAL_FUNCTIONS; fi
  done

  source $HOME/.profile
}

run
