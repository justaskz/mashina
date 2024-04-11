function mashina_debug {
  local ssh_auth_sock="${SSH_AUTH_SOCK:-undefined}"

  echo "MASHINA_VERSION: $(mashina__version)"
  echo "MASHINA_IS_DEBIAN: $(mashina__is_debian)"
  echo "MASHINA_IS_MACOS: $(mashina__is_macos)"
  echo "MASHINA_IS_BASH: $(mashina__is_bash)"
  echo "MASHINA_IS_ZSH: $(mashina__is_zsh)"
  echo "TERM: $TERM"
  echo "PATH: $PATH"
  echo -e "SSHD_PROCESSES: \n$(ps -eo pid,user,time,cmd | grep '[s]shd' | grep "$(whoami)" | sed 's/^/  /')"
  echo "SSH_AUTH_SOCK: $ssh_auth_sock"
  echo "SSH_AUTH_SOCK_SYMLINK: $(readlink "$HOME/.ssh/ssh_auth_sock")"
  echo -e "SSH_KEYS: \n$(ssh-add -l | sed 's/^/  /')"
  echo "INVENTORY: $INVENTORY"
  echo "GROUP: $GROUP"
  echo "AWS_PROFILE: $AWS_PROFILE"
  echo "AWS_REGION: $AWS_REGION"
}
