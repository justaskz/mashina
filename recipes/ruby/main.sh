source recipes/helpers/install.sh

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

# function install_debian {
#   # installation commands
# }

function install_macos {
  VERSION=2.7.6

  brew install ruby-build
  git clone --depth 1 https://github.com/sstephenson/rbenv.git $MASHINA_OPT/rbenv
  ln -s $MASHINA_OPT/rbenv/bin/rbenv $MASHINA_BIN

  rbenv install -s $VERSION
  rbenv global $VERSION
  rbenv rehash
}

function install_dependencies_macos {
  brew install libffi
  # gem install ffi sassc
}

run
