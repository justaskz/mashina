source "$MASHINA_SOURCE/recipes/helpers/main.sh"

NEOVIM_HOME="$HOME/.config/nvim"

function run {
  update_config
  exit_if_installed nvim
  install
}

function update_config {
  mkdir -p "$NEOVIM_HOME"
  ln -sf $MASHINA_SOURCE/recipes/nvim/config/init.lua $NEOVIM_HOME/init.lua
}

function uninstall {
  rm -rf $NEOVIM_HOME
  rm -rf $HOME/.local/share/nvim
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
  git clone https://github.com/wbthomason/packer.nvim $NEOVIM_HOME/pack/packer/start/packer.nvim

}

function install_lunarvim {
  LV_BRANCH='release-1.3/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.3/neovim-0.9/utils/installer/install.sh)
}

run
