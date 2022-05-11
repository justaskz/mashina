#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed starship
  install
}

function install_debian {
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh -P $LOCAL_TMP
  sh $LOCAL_TMP/install.sh --yes --bin-dir $LOCAL_BIN
  rm $LOCAL_TMP/install.sh
}

function update_config {
  cp recipes/starship/dotfiles/.starship $HOME
  cp recipes/starship/init/starship.sh $LOCAL_INIT
}

run
