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
  cp -ar files/fzf/fzf.sh $LOCAL_CONFIG
}

run
