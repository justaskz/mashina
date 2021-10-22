#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed zsh
  install
}

function update_config {
  cp files/zsh/config/zsh.sh $LOCAL_INIT
  cp files/zsh/.zshrc $HOME
}

function install_debian {
  sudo apt -y install zsh
}

# function install_from_source {
#   # personal try
#   # LINK="https://www.zsh.org/pub/zsh-5.8.tar.xz"
#   # wget $LINK
#   # tar -xf zsh-5.8.tar.xz

#   # not complete
#   # taken from https://jdhao.github.io/2018/10/13/centos_zsh_install_use/
#   deps
#   install
# }

# function install {
#   wget -O zsh.tar.xz https://sourceforge.net/projects/zsh/files/latest/download
#   tar xf zsh.tar.xz
#   cd zsh
#   ./configure --prefix="$HOME/local" \
#       CPPFLAGS="-I$HOME/local/include" \
#       LDFLAGS="-L$HOME/local/lib"
#   make -j && make install
# }

# function deps {
#   wget ftp://ftp.gnu.org/gnu/ncurses/ncurses-6.1.tar.gz
#   tar xf ncurses-6.1.tar.gz
#   cd ncurses-6.1
#   ./configure --prefix=$HOME/local CXXFLAGS="-fPIC" CFLAGS="-fPIC"
#   make -j && make install
# }

$@
