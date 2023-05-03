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
  brew install wget grep gnu-sed tree neofetch findutils unzip rsync

  ln -fs /opt/homebrew/opt/grep/libexec/gnubin/grep $MASHINA_BIN/grep
  ln -fs /opt/homebrew/opt/grep/libexec/gnubin/egrep $MASHINA_BIN/egrep
  ln -fs /opt/homebrew/opt/grep/libexec/gnubin/fgrep $MASHINA_BIN/fgrep

  ln -fs /opt/homebrew/opt/gnu-sed/libexec/gnubin/sed $MASHINA_BIN/sed
  ln -fs /opt/homebrew/opt/findutils/libexec/gnubin/find $MASHINA_BIN/find
  ln -fs /opt/homebrew/opt/findutils/libexec/gnubin/locate $MASHINA_BIN/locate

  ln -fs /opt/homebrew/opt/unzip/bin/unzip $MASHINA_BIN/unzip
}

run
