#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  exit_if_installed starship
  install
}

function install_debian {
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh -P $LOCAL_TMP
  bash $LOCAL_TMP/install.sh --yes --bin-dir $LOCAL_BIN
  rm $LOCAL_TMP/install.sh

  cp files/starship/.starship $HOME
  cp files/starship/config/starship.sh $LOCAL_CONFIG
}

run
