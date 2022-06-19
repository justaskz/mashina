#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed tmux
  install
}

function update_config {
  cp recipes/tmux/dotfiles/.tmux.conf $HOME
}

function install_debian {
  VERSION="2.8"
  TMUX_PATH="$MASHINA_OPT/tmux"
  rm -rf $TMUX_PATH

  sudo apt-get -y install pkg-config libevent-dev libncurses5-dev libncursesw5-dev autotools-dev automake bison byacc
  git clone --depth 1 --branch "$VERSION" https://github.com/tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"

  sh autogen.sh
  sh configure && make
  ln -s "$TMUX_PATH/tmux" $MASHINA_BIN
}

function dependencies_osx {
  brew install reattach-to-user-namespace
}

run
