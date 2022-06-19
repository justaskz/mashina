#!/usr/bin/env bash

FZF_HOME="$MASHINA_OPT/fzf"

if [ -n "$BASH_VERSION" ]; then
  source "$FZF_HOME/shell/completion.bash"
  source "$FZF_HOME/shell/key-bindings.bash"

  [ -n "$BASH" ] && complete -F _fzf_complete_ssh -o default -o bashdefault ssh
fi

if [ -n "$ZSH_VERSION" ]; then
  source "$FZF_HOME/shell/completion.zsh"
  source "$FZF_HOME/shell/key-bindings.zsh"
fi

# if [ -n "$ZSH_VERSION" ]; then
#   zle     -N   fzf-file-widget_mod
#   bindkey '^P' fzf-file-widget_mod
# fi
