#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  install
}

function install_debian {
  cp recipes/shewill/dotfiles/.profile $HOME
  source $HOME/.profile
}

run
