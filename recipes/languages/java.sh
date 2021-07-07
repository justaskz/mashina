#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  exit_if_installed java
  install
}

function install_debian {
  apt install default-jre
}

function install_osx {
  # installation commands
}

run
