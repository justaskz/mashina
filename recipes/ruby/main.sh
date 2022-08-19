source recipes/helpers/install.sh

VERSION=2.7.6

function run {
  update_config
  exit_if_installed rbenv
  install
}

function update_config {
  cp recipes/ruby/init/ruby.sh $MASHINA_INIT
  cp recipes/ruby/dotfiles/.gemrc $HOME
  cp recipes/ruby/dotfiles/.rubocop.yml $HOME
}

function install_debian {
  git clone --depth 1 https://github.com/sstephenson/rbenv.git $MASHINA_OPT/rbenv
  ln -s $MASHINA_OPT/rbenv/bin/rbenv $MASHINA_BIN

  mkdir -p "$(rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

  rbenv install -s $VERSION
  rbenv global $VERSION
  rbenv rehash
}

function install_macos {
  brew install ruby-build
  git clone --depth 1 https://github.com/sstephenson/rbenv.git $MASHINA_OPT/rbenv
  ln -s $MASHINA_OPT/rbenv/bin/rbenv $MASHINA_BIN

  rbenv install -s $VERSION
  rbenv global $VERSION
  rbenv rehash
}

function install_dependencies_macos {
  brew install libffi
  brew install mysql
  # gem install ffi sassc
}

function install_dependencies_debian {
  apt-get install libmysqlclient-dev
}

run
