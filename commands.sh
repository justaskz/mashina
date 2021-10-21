#!/usr/bin/env bash

function install {
  source files/shewill/main.sh
  bash recipes/bash.sh config
  bash recipes/common/build_tools.sh
  source $HOME/.bashrc
}

function uninstall {
  rm -rf $HOME/.mashina
  rm -rf $HOME/.local
}

$@
