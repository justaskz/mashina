function run {
  debian_install
}

function debian_install {
  PYTHON_VERSION="3.9.1"
  install_dependencies
  git clone --depth 1 https://github.com/pyenv/pyenv.git $MASHINA_OPT/pyenv
  ln -s $MASHINA_OPT/pyenv/bin/pyenv $MASHINA_BIN/pyenv
  cp files/pyenv/config/pyenv.sh $MASHINA_INIT
  pyenv install $PYTHON_VERSION
  pyenv global $PYTHON_VERSION
}

function install_dependencies {
  sudo apt install -y make \
    build-essential \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    wget \
    curl \
    llvm \
    libncurses5-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libffi-dev \
    liblzma-dev \
    python-openssl \
    git
}

run
