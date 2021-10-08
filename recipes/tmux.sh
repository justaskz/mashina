#!/usr/bin/env bash

#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed tmux
  install
}

function update_config {
  cp files/tmux/.tmux.conf $HOME
}

function install_debian {
  VERSION="2.8"
  TMUX_PATH="$LOCAL_OPT/tmux"
  rm -rf $TMUX_PATH

  sudo apt-get -y install pkg-config libevent-dev libncurses5-dev libncursesw5-dev autotools-dev automake
  git clone --depth 1 --branch "$VERSION" https://github.com/tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"

  sh autogen.sh
  sh configure && make
  cp tmux $LOCAL_BIN
}

function install_osx {
  # installation commands
}

function dependencies_osx {
  brew install reattach-to-user-namespace
}

run
