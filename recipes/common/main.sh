source recipes/helpers/main.sh

function run {
  install
}

function install_debian {
  apt update
  apt -y install \
    build-essential \
    software-properties-common \
    apt-transport-https
}

function install_macos {
  brew install wget grep gnu-sed

  ln -s /opt/homebrew/opt/grep/libexec/gnubin/grep $MASHINA_BIN/grep
  ln -s /opt/homebrew/opt/gnu-sed/libexec/gnubin/sed $MASHINA_BIN/sed
}

run
