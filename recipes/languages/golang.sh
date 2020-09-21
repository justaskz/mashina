#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  install
}

function install_debian {
  sudo snap install go
}

run
