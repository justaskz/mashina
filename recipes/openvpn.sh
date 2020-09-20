#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  exit_if_installed openvpn
  install
}

function install_debian {
  apt install openvpn
}

run
