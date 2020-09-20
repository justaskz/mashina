#!/usr/bin/env bash

function install {
  if [ -f "/etc/debian_version" ]; then
     install_debian
  fi

  if [[ "$OSTYPE" == "darwin"* ]]; then
    install_osx
  fi
}

function exit_if_installed {
  COMMAND_NAME=$1
  if hash $COMMAND_NAME 2> /dev/null; then exit 0; fi
}
