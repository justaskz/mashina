#!/usr/bin/env bash

function run {
  source files/shewill/main.sh
  bash recipes/bash.sh config
  bash recipes/shewill.sh
}

run
