#!/usr/bin/env bash

function install {
  bash recipes/shewill/main.sh
  bash recipes/bash/main.sh config
  bash recipes/common/build_tools.sh
}

function uninstall {
  rm -rf $HOME/.mashina
  rm -rf $HOME/.local
}

$@