source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed tmux
  install
}

function update_config_debian {
  local TMUX_HOME="$HOME/.config/tmux"
  mkdir -p "$TMUX_HOME"
  cp "recipes/tmux/config/.tmux-linux.conf" "$TMUX_HOME/tmux.conf"
  echo "" >> "$TMUX_HOME/tmux.conf"
  cat recipes/tmux/config/.tmux.conf >> "$TMUX_HOME/tmux.conf"
}

function update_config_macos {
  local CONFIG="$GLOBAL_CONFIG/tmux"
  mkdir -p "$CONFIG"
  ln -sf "$MASHINA_SOURCE/recipes/tmux/config/.tmux.conf" "$CONFIG/tmux.conf"
}

function install_debian {
  local VERSION="3.4"
  local TMUX_PATH="$MASHINA_OPT/tmux"
  rm -rf "$TMUX_PATH"

  sudo apt-get -y install pkg-config libevent-dev libncurses5-dev libncursesw5-dev autotools-dev automake bison byacc
  git clone --depth 1 --branch "$VERSION" https://github.com/tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"

  sh autogen.sh
  sh configure
  make
  ln -sf "$TMUX_PATH/tmux" "$MASHINA_BIN"
}

function install_macos {
  brew install tmux
}

run
