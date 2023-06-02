source recipes/helpers/main.sh

RUBY_VERSION=2.7.8

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
  install_dependencies_debian
  git clone --depth 1 https://github.com/sstephenson/rbenv.git $MASHINA_OPT/rbenv
  ln -s $MASHINA_OPT/rbenv/bin/rbenv $MASHINA_BIN

  rm -rf "$(rbenv root)"/plugins
  mkdir -p "$(rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

  rbenv install -s $RUBY_VERSION
  rbenv global $RUBY_VERSION
  rbenv rehash
}

function install_macos {
  brew install ruby-build
  git clone --depth 1 https://github.com/sstephenson/rbenv.git $MASHINA_OPT/rbenv
  ln -sf $MASHINA_OPT/rbenv/bin/rbenv $MASHINA_BIN

  rbenv install -s $RUBY_VERSION
  rbenv global $RUBY_VERSION
  rbenv rehash
}

function install_dependencies_macos {
  brew install libffi mysql
  gem install solargraph rails
  gem install mysql2 -v '0.5.5' -- --with-ldflags=-L/opt/homebrew/opt/openssl@1.1/lib --with-cppflags=-I/opt/homebrew/opt/openssl@1.1/include

  # gem install ffi sassc
}

function install_dependencies_debian {
  sudo apt install -y libz-dev default-libmysqlclient-dev # libmysqlclient-dev
}

run
