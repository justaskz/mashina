function main() {
  local FZF_HOME="$MASHINA_OPT/fzf"

  if $(mashina_is_bash); then
    source "$FZF_HOME/shell/completion.bash"
    source "$FZF_HOME/shell/key-bindings.bash"

    #################################################
    ## SSH **: INVENTORY
    #################################################
    [ -n "$BASH" ] && complete -F _fzf_complete_ssh -o default -o bashdefault ssh

    ##################################################
    ## TERRA
    ##################################################
    [ -n "$BASH" ] && complete -F _fzf_complete_terra -o default -o bashdefault terra

    ##################################################
    ## INV
    ##################################################
    [ -n "$BASH" ] && complete -F _fzf_complete_inv -o default -o bashdefault inv
  fi

  if $(mashina_is_zsh); then
    source "$FZF_HOME/shell/completion.zsh"
    source "$FZF_HOME/shell/key-bindings.zsh"

    #################################################
    ## CTRL + P
    #################################################
    # zle -N fzf-file-widget_mod
    # bindkey '^P' fzf-file-widget_mod
  fi
}

main
