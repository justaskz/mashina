function install_dev {
  bash recipes/mashina/main.sh
  source "$HOME/.profile"
  bash recipes/starship/main.sh
  bash recipes/fzf/main.sh
}

function install_debian {
  bash recipes/mashina/main.sh
  source "$HOME/.profile"
  # bash recipes/common/main.sh
  # bash recipes/bash/main.sh
  bash recipes/tmux/main.sh
  bash recipes/fzf/main.sh
  # bash recipes/ssh/main.sh
  bash recipes/starship/main.sh

  # bash recipes/python/main.sh
  # bash recipes/ansible/main.sh
}

function install_macos {
  bash recipes/mashina/main.sh

  bash recipes/homebrew/main.sh
  bash recipes/common/main.sh
  bash recipes/tmux/main.sh
  bash recipes/starship/main.sh
  bash recipes/zsh/main.sh
}

function setup_control_server {
  bash recipes/mashina/main.sh
  source "$HOME/.profile"
  bash recipes/common/main.sh
  bash recipes/tmux/main.sh
  bash recipes/fzf/main.sh
  bash recipes/starship/main.sh
  bash recipes/snap/main.sh
  bash recipes/helix/main.sh
}

function uninstall {
  rm -r "$HOME/.config/mashina"
  rm -r "$HOME/.profile"
  rm -r "$HOME/.zprofile"
  rm -r "$HOME/.bashrc"
  rm -r "$HOME/.zshrc"
}

$@
