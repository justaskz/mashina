source recipes/helpers/main.sh

# PYTHON_VERSION="3.7.3"
PYTHON_VERSION="3.11.2"

function run {
  update_config
  exit_if_installed pyenv
  install
}

function update_config {
  cp recipes/python/init/pyenv.sh $MASHINA_INIT
}

function install_debian {
  install_dependencies_debian
  git clone https://github.com/pyenv/pyenv.git $MASHINA_OPT/pyenv
  ln -s $MASHINA_OPT/pyenv/bin/pyenv $MASHINA_BIN/pyenv
  pyenv install $PYTHON_VERSION
  pyenv global $PYTHON_VERSION
}

function install_macos {
  git clone --depth 1 https://github.com/pyenv/pyenv.git $MASHINA_OPT/pyenv
  ln -s $MASHINA_OPT/pyenv/bin/pyenv $MASHINA_BIN/pyenv
  pyenv install $PYTHON_VERSION
  pyenv global $PYTHON_VERSION
  pip install --upgrade pip
}

function install_dependencies_debian {
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
    git
}

run
