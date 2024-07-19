source "$MASHINA_SOURCE/recipes/helpers/main.sh"

RUBY_VERSION="3.3.4"

function run {
  update_config
  exit_if_installed rbenv
  install
}

function update_config {
  ln -sf "$MASHINA_SOURCE/recipes/ruby/init/ruby.sh" "$MASHINA_INIT"
  cp "$MASHINA_SOURCE/recipes/ruby/dotfiles/.gemrc" "$HOME"

  # rubocop
  CONFIG_DIR="$GLOBAL_CONFIG/rubocop"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/ruby/config/rubocop/config.yml" "$CONFIG_DIR/config.yml"

  # solargraph
  CONFIG_DIR="$GLOBAL_CONFIG/solargraph"
  mkdir -p "$CONFIG_DIR"
  ln -sf "$MASHINA_SOURCE/recipes/ruby/config/solargraph/config.yml" "$CONFIG_DIR/config.yml"
}

function install_debian {
  install_dependencies_debian

  git clone --depth 1 https://github.com/sstephenson/rbenv.git "$MASHINA_OPT/rbenv"
  ln -s "$MASHINA_OPT/rbenv/bin/rbenv" "$MASHINA_BIN"

  rm -rf "$(rbenv root)"/plugins
  mkdir -p "$(rbenv root)"/plugins
  git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build

  rbenv install -s "$RUBY_VERSION"
  rbenv global "$RUBY_VERSION"
  rbenv rehash
}

function install_macos {
  brew install ruby-build
  git clone --depth 1 https://github.com/sstephenson/rbenv.git "$MASHINA_OPT/rbenv"
  ln -sf "$MASHINA_OPT/rbenv/bin/rbenv" "$MASHINA_BIN"

  rbenv install -s $RUBY_VERSION
  rbenv global $RUBY_VERSION
  rbenv rehash

  install_dependencies_macos

  # git clone git@github.com:justaskz/solargraph.git $MASHINA_OPT/solargraph
  # cd $MASHINA_OPT/solargraph
  # gem build && gem install solargraph*.gem
}

function install_dependencies_macos {
  brew install libffi mysql
  gem install mysql2 -v '0.5.5' -- --with-ldflags=-L/opt/homebrew/opt/openssl@1.1/lib --with-cppflags=-I/opt/homebrew/opt/openssl@1.1/include

  # gem install ffi sassc
}

function install_dependencies_debian {
  sudo apt install -y libz-dev default-libmysqlclient-dev libffi-dev libyaml-dev # libmysqlclient-dev
}

run
