#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  install
}

function install_debian {
  sudo apt -y install tree
}

run
