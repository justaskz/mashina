source recipes/helpers/install.sh

RUBY_VERSION=2.7.6

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

  rbenv install -s $RUBY_VERSION
  rbenv global $RUBY_VERSION
  rbenv rehash
}

function install_macos {
  brew install ruby-build
  git clone --depth 1 https://github.com/sstephenson/rbenv.git $MASHINA_OPT/rbenv
  ln -s $MASHINA_OPT/rbenv/bin/rbenv $MASHINA_BIN

  rbenv install -s $RUBY_VERSION
  rbenv global $RUBY_VERSION
  rbenv rehash
}

function install_dependencies_macos {
  brew install libffi mysql
  # gem install ffi sassc
}

function install_dependencies_debian {
  sudo apt install -y libmysqlclient-dev
}

run
