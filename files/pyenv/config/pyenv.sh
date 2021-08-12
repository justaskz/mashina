#!/usr/bin/env bash

if [ -x "$(command -v pyenv)" ]; then
  export PYENV_ROOT="$LOCAL_OPT/pyenv"
  eval "$(pyenv init --path)"
fi
