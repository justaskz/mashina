#!/usr/bin/env bash

source "$MASHINA_ROOT/scripts/init.sh"
source "$MASHINA_ROOT/scripts/aliases.sh"

if [[ -n "$ZSH_VERSION" ]] && [[ -a "$MASHINA_INIT/.zshrc" ]]; then source "$MASHINA_INIT/.zshrc"; fi
if [[ -n "$BASH_VERSION" ]] && [[ -a "$MASHINA_INIT/.bashrc" ]]; then source "$MASHINA_INIT/.bashrc"; fi

for FILE in "$MASHINA_FUNCTIONS/*.sh"; do
  if [[ -a $FILE ]]; then source $FILE; fi
done

for FILE in "$MASHINA_INIT/*.sh"; do
  if [[ -a $FILE ]]; then source $FILE; fi
done
