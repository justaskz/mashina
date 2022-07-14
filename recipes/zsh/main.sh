source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed zsh
  install
}

function update_config {
  cp recipes/zsh/init/zsh.sh $MASHINA_INIT
}

function install_debian {
  exit 0
}

function install_macos {
  exit 0
}

function install_plugins {
  # hyghlights
  git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting $MASHINA_OPT/zsh-syntax-highlighting

  # git completions
  wget -O $MASHINA_FUNCTIONS/git-completion.bash https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
  wget -O $MASHINA_FUNCTIONS/_git https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.zsh
}

function install_ohmyzsh {
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  rm -f $HOME/.zshrc
  rm -f $HOME/.zshrc.pre-oh-my-zsh

  ZSH_CUSTOM="$HOME/.oh-my-zsh-custom"
  mkdir -p $ZSH_CUSTOM

  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
}

run