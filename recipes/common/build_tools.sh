#!/usr/bin/env bash

function run {
  install_debian
}

function install_debian {
  sudo apt update
  sudo apt -y install software-properties-common
  sudo apt -y install build-essential
}

run
