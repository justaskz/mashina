#!/usr/bin/env bash

export MASHINA_ROOT="$HOME/mashina"

if [[ -a "$MASHINA_ROOT/main.sh" ]]; then
  source "$MASHINA_ROOT/main.sh"
fi
