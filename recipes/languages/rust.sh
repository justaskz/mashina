#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed cargo
  install
}

function install_debian {
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
}

function update_config {
  ln -s $HOME/.cargo/bin/cargo $MASHINA_BIN
}

run
