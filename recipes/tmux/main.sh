source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed tmux
  install
}

function update_config_debian {
  cp recipes/tmux/dotfiles/.tmux-linux.conf $HOME/.tmux.conf
}

function update_config_macos {
  cp recipes/tmux/dotfiles/.tmux-macos.conf $HOME/.tmux.conf
}

function install_debian {
  VERSION="2.8"
  TMUX_PATH="$MASHINA_OPT/tmux"
  rm -rf $TMUX_PATH

  sudo apt-get -y install pkg-config libevent-dev libncurses5-dev libncursesw5-dev autotools-dev automake bison byacc
  git clone --depth 1 --branch "$VERSION" https://github.com/tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"

  sh autogen.sh
  sh configure
  make
  ln -s "$TMUX_PATH/tmux" $MASHINA_BIN
}

function install_macos_with_brew {
  # MIGHT NEED
  # brew libevent autoconf automake libtool
  BREW_TAP_NAME="$USER/local-tmux"
  brew tap-new "$BREW_TAP_NAME"
  brew extract --version=2.8 tmux "$BREW_TAP_NAME"
  brew install tmux@2.8
}

function install_macos {
  # RUN COMMON RECIPE

  VERSION="2.8"
  TMUX_PATH="$MASHINA_OPT/tmux"
  rm -rf $TMUX_PATH

  git clone --depth 1 --branch "$VERSION" https://github.com/tmux/tmux.git "$TMUX_PATH"
  cd "$TMUX_PATH"

  COMMON_INSTALL_PREFIX="/opt/homebrew/Cellar/libevent/2.1.12/include"
  LDFLAGS="-L${COMMON_INSTALL_PREFIX}/lib" CPPFLAGS="-I${COMMON_INSTALL_PREFIX}/include" LIBS="-lresolv" ./autogen.sh
  LDFLAGS="-L${COMMON_INSTALL_PREFIX}/lib" CPPFLAGS="-I${COMMON_INSTALL_PREFIX}/include" LIBS="-lresolv" ./configure

  sh autogen.sh
  sh configure && make
  ln -s "$TMUX_PATH/tmux" $MASHINA_BIN

  # wget https://github.com/libevent/libevent/releases/download/release-2.1.12-stable/libevent-2.1.12-stable.tar.gz


  # wget https://www.openssl.org/source/openssl-3.0.3.tar.gz

  # PKG_CONFIG_PATH="/usr/local/lib/pkgconfig"
  # ./configure
}

# function dependencies_osx {
#   brew install reattach-to-user-namespace
# }

run
