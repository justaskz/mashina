#!/usr/bin/env bash

source $HOME/.mashina/shewill/scripts/init.sh
source $HOME/.mashina/shewill/scripts/aliases.sh

if [ -n "$ZSH_VERSION" ] && [ -a "$LOCAL_INIT/.zshrc" ]; then source $LOCAL_INIT/.zshrc; fi
if [ -n "$BASH_VERSION" ] && [ -a "$LOCAL_INIT/.bashrc" ]; then source $LOCAL_INIT/.bashrc; fi

for FILE in $LOCAL_FUNCTIONS/*.sh; do
  if [ -a $FILE ]; then source $FILE; fi
done

for FILE in $LOCAL_INIT/*.sh; do
  if [ -a $FILE ]; then source $FILE; fi
done
