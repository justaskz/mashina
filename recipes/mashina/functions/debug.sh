function mashina_debug {
  echo "MASHINA_IS_LOADED: $(mashina_is_mashina_loaded)"
  echo "MASHINA_IS_DEBIAN: $(mashina_is_debian)"
  echo "MASHINA_IS_MACOS: $(mashina_is_macos)"
  echo "MASHINA_IS_BASH: $(mashina_is_bash)"
  echo "MASHINA_IS_ZSH: $(mashina_is_zsh)"
  echo "MASHINA_IS_SHELL_INTERACTIVE: $(mashina_is_shell_interactive)"
  echo "PATH: $PATH"
  echo "SSH_AUTH_SOCK: $SSH_AUTH_SOCK"
  echo "SSH_KEYS: $(ssh-add -l)"
  echo "INVENTORY: $INVENTORY"
  echo "GROUP: $GROUP"
  echo "TERM": $(echo $TERM)
}
