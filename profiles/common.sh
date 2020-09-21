#!/usr/bin/env bash

function run {
  source files/shewill/main.sh
  bash recipes/bash.sh config
  bash recipes/shewill.sh
  bash recipes/common/build_tools.sh
  bash recipes/common/misc_tools.sh
}

run
