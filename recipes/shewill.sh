#!/usr/bin/env bash

function run {
  mkdir -p $HOME/.shewill
  cp -ar files/shewill/* $HOME/.shewill/
}

run
