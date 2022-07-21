source recipes/helpers/install.sh

function run {
  update_config
  exit_if_installed python
  install
}

function update_config {
  cp recipes/python/init/pyenv.sh $MASHINA_INIT
}

function install_debian {
  PYTHON_VERSION="3.9.6"
  install_debian_dependencies
  git clone --depth 1 https://github.com/pyenv/pyenv.git $MASHINA_OPT/pyenv
  ln -s $MASHINA_OPT/pyenv/bin/pyenv $MASHINA_BIN/pyenv
  pyenv install $PYTHON_VERSION
  pyenv global $PYTHON_VERSION
}

function install_macos {
  exit 0
}

function install_debian_dependencies {
  apt install -y make \
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
