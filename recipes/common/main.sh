source recipes/helpers/main.sh

function run {
  install
}

function install_debian {
  apt update
  apt -y install \
    build-essential \
    software-properties-common \
    apt-transport-https \
    wget \
    sudo
}

function install_macos {
  brew install wget grep gnu-sed tree neofetch findutils unzip

  ln -s /opt/homebrew/opt/grep/libexec/gnubin/grep $MASHINA_BIN/grep
  ln -s /opt/homebrew/opt/grep/libexec/gnubin/egrep $MASHINA_BIN/egrep
  ln -s /opt/homebrew/opt/grep/libexec/gnubin/fgrep $MASHINA_BIN/fgrep

  ln -s /opt/homebrew/opt/gnu-sed/libexec/gnubin/sed $MASHINA_BIN/sed
  ln -s /opt/homebrew/opt/findutils/libexec/gnubin/find $MASHINA_BIN/find
  ln -s /opt/homebrew/opt/findutils/libexec/gnubin/locate $MASHINA_BIN/locate

  ln -s /opt/homebrew/opt/unzip/bin/unzip $MASHINA_BIN/unzip
}

run
