source recipes/helpers/install.sh

function run {
  exit_if_installed vagrant
  install
}

function install_debian {
  exit 0
}

function install_macos {
  VERSION="v2.2.19"
  git clone https://github.com/hashicorp/vagrant.git $MASHINA_OPT/vagrant
  cd $MASHINA_OPT/vagrant
  git checkout $VERSION
  bundle install
  ln -s $MASHINA_OPT/vagrant/bin/vagrant $MASHINA_BIN
}

run
