source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed nvim
  install
}

function update_config {
  cp recipes/vim/dotfiles/.vimrc $HOME/
}

function install_debian {
  exit 0
}

function install_macos {
  brew install vim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

run
