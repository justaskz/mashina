#!/usr/bin/env bash

function run {
  install_debian
}

function install_debian {
  sudo apt-get update
  sudo apt-get -y install software-properties-common
  sudo apt-get -y install build-essential
}

run
