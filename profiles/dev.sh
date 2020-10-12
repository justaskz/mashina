#!/usr/bin/env bash

function run {
  source files/shewill/main.sh
  # bash recipes/bash.sh config
  bash recipes/shewill.sh
  bash recipes/fzf.sh
  # bash recipes/languages/rust.sh
  # bash recipes/starship.sh
}

run
