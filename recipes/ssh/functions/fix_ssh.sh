#!/usr/bin/env bash

function fix_ssh {
  # if [[ ! -S ~/.ssh/ssh_auth_sock ]] && [[ -S "$SSH_AUTH_SOCK" ]]; then
  echo "Fixing"
  ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
  # fi
}
