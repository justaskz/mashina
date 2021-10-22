#!/usr/bin/env bash

export STARSHIP_CONFIG="$HOME/.starship"

if [ -n "$ZSH_VERSION" ]; then eval "$(starship init zsh)"; fi
if [ -n "$BASH_VERSION" ]; then eval "$(starship init bash)"; fi
