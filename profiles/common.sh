#!/usr/bin/env bash

function run {
  bash recipes/shewill.sh

  bash recipes/common/build_tools.sh
  bash recipes/common/misc_tools.sh
  # bash recipes/zsh.sh
  # bash recipes/starship.sh
}

run
