#!/usr/bin/env bash

function install {
  source files/shewill/main.sh
  bash recipes/bash.sh config
  bash recipes/common/build_tools.sh
  bash recipes/common/misc_tools.sh
}

function uninstall {
  rm -rf $HOME/.mashina
  rm -rf $HOME/.local
}

$@
