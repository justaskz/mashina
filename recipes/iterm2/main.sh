#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  install
}

function install_macos {
  brew install iterm2
}

run
