#!/usr/bin/env bash

function run {
  debian_install
}

function debian_install {
  # git clone https://github.com/pyenv/pyenv.git ~/.pyenv
  apt install python-pip
}

run
