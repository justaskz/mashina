#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed fzf
  install
}

function install_debian {
  FZF_HOME="$LOCAL_OPT/fzf"
  git clone --depth 1 https://github.com/junegunn/fzf.git $FZF_HOME
  bash $FZF_HOME/install --bin

  ln -s $FZF_HOME/bin/fzf $LOCAL_BIN
}

function update_config {
  cp -ar recipes/fzf/init/fzf.sh $LOCAL_INIT
  cp recipes/fzf/functions/fzf.sh $LOCAL_FUNCTIONS
}

run
