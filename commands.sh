function install_dev {
  bash recipes/mashina/main.sh

  # bash recipes/zsh/main.sh
  # bash recipes/homebrew/main.sh
  # bash recipes/ruby/main.sh
  # bash recipes/fzf/main.sh
  # bash recipes/starship/main.sh

  # bash recipes/common/build_tools.sh
  # bash recipes/tmux/main.sh

  # bash recipes/bash/main.sh config
  # bash recipes/common/build_tools.sh
  # source $HOME/.zshrc
}

function install_debian {
  bash recipes/mashina/main.sh
  bash recipes/common/main.sh
  # bash recipes/bash/main.sh
  bash recipes/tmux/main.sh
  bash recipes/fzf/main.sh
  bash recipes/ssh/main.sh
  bash recipes/starship/main.sh
}

function install_macos {
  bash recipes/mashina/main.sh

  bash recipes/homebrew/main.sh
  bash recipes/common/main.sh
  bash recipes/tmux/main.sh
  bash recipes/starship/main.sh
  bash recipes/zsh/main.sh
}

function uninstall {
  rm -r $HOME/mashina
  rm -r $HOME/.profile
  rm -r $HOME/.zprofile
  rm -r $HOME/.bashrc
  rm -r $HOME/.zshrc
}

$@
