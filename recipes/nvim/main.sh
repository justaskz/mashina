# bash recipes/nvim/main.sh;nvim
source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed nvim
  install
}

function update_config {
  NEOVIM_HOME="$HOME/.config/nvim"

  mkdir -p "$NEOVIM_HOME"

  cp recipes/nvim/dotfiles/init.lua $NEOVIM_HOME/init.lua

  # cp recipes/neovim/dotfiles/init.lua $NEOVIM_HOME/init.lua
  # rm -rf $NEOVIM_HOME/lua
  # cp -r recipes/neovim/dotfiles/lua $NEOVIM_HOME/lua
}

function install_debian {
  URL="https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.tar.gz"
  wget -P $MASHINA_TMP $URL
  tar xzvf $MASHINA_TMP/nvim-linux64.tar.gz -C $MASHINA_OPT
  rm -rf $MASHINA_TMP/nvim-linux64.tar.gz
  ln -sf $MASHINA_OPT/nvim-linux64/bin/nvim $MASHINA_BIN
}

function install_macos {
  brew install nvim

  # install plug.vim manager
  # curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  # open nvim and run :PlugInstall

  # install packer
  git clone https://github.com/wbthomason/packer.nvim $HOME/.config/nvim/pack/packer/start/packer.nvim

}

run
