#!/usr/bin/env bash

function install {
  bash recipes/mashina/main.sh
  # bash recipes/bash/main.sh config
  # bash recipes/common/build_tools.sh
  source $HOME/.profile
}

function uninstall {
  rm -r $MASHINA_ROOT
  rm -r $HOME/.profile
}

$@
