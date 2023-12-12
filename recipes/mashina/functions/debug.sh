function mashina_debug {
  local ssh_auth_sock="${SSH_AUTH_SOCK:-undefined}"

  echo "MASHINA_VERSION: $(mashina_version)"
  echo "MASHINA_IS_LOADED: $(mashina_is_mashina_loaded)"
  echo "MASHINA_IS_DEBIAN: $(mashina_is_debian)"
  echo "MASHINA_IS_MACOS: $(mashina_is_macos)"
  echo "MASHINA_IS_BASH: $(mashina_is_bash)"
  echo "MASHINA_IS_ZSH: $(mashina_is_zsh)"
  echo "MASHINA_IS_SHELL_INTERACTIVE: $(mashina_is_shell_interactive)"
  echo "TERM: $TERM"
  echo "PATH: $PATH"
  echo -e "SSHD_PROCESSES: \n$(ps -eo pid,user,time,cmd | grep '[s]shd' | grep "$(whoami)" | sed 's/^/  /')"
  echo "SSH_AUTH_SOCK: $ssh_auth_sock"
  echo "SSH_AUTH_SOCK_SYMLINK: $(readlink "$HOME/.ssh/ssh_auth_sock")"
  echo -e "SSH_KEYS: \n$(ssh-add -l | sed 's/^/  /')"
  echo "INVENTORY: $INVENTORY"
  echo "GROUP: $GROUP"
}
