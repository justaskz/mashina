source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed nvim
  install
}

function update_config {
  NEOVIM_HOME="$HOME/.config/nvim"

  mkdir -p "$NEOVIM_HOME"

  cp recipes/neovim/dotfiles/init.lua $NEOVIM_HOME/init.lua
  rm -rf $NEOVIM_HOME/lua
  cp -r recipes/neovim/dotfiles/lua $NEOVIM_HOME/lua
}

function install_debian {
  exit 0
}

function install_macos {
  curl -LO https://github.com/neovim/neovim/releases/download/nightly/nvim-macos.tar.gz
  tar xzf nvim-macos.tar.gz
  ./nvim-macos/bin/nvim

  # install plug.vim manager
  curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  # open nvim and run :PlugInstall
}

run
