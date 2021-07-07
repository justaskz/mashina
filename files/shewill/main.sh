#!/usr/bin/env bash

source $HOME/.shewill/scripts/env.sh
source $HOME/.shewill/scripts/init.sh
source $HOME/.shewill/scripts/aliases.sh

for FILE in $LOCAL_CONFIG/*.sh; do
  if [ -a $FILE ]; then source $FILE; fi
done

if [ -n "$ZSH_VERSION" ] && [ -a "$LOCAL_CONFIG/zsh.sh" ]; then source $LOCAL_CONFIG/zsh.sh; fi
if [ -n "$BASH_VERSION" ] && [ -a "$LOCAL_CONFIG/bash.sh" ]; then source $LOCAL_CONFIG/bash.sh; fi
