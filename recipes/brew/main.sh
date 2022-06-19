#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  exit_if_installed brew
  install
}

function install_macos {
  git clone --depth 1 https://github.com/Homebrew/brew $MASHINA_OPT/homebrew
  ln -S $MASHINA_OPT/homebrew $MASHINA_BIN
}
