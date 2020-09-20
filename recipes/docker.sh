#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  exit_if_installed docker
  install
}

function install_debian {
  sudo snap install docker
}

run
