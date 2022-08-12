source recipes/helpers/install.sh

VAGRANT_VERSION="2.2.19"

function run {
  exit_if_installed vagrant
  install
}

function install_debian {
  URL="https://releases.hashicorp.com/vagrant/$VAGRANT_VERSION/vagrant_${VAGRANT_VERSION}_x86_64.deb"
  wget -O $MASHINA_TMP/vagrant.deb $URL
  apt install -y $MASHINA_TMP/vagrant.deb
}

function install_macos {
  # Install ruby
  VERSION="v$VAGRANT_VERSION"
  git clone https://github.com/hashicorp/vagrant.git $MASHINA_OPT/vagrant
  cd $MASHINA_OPT/vagrant
  git checkout $VERSION
  bundle install
  ln -s $MASHINA_OPT/vagrant/bin/vagrant $MASHINA_BIN
}

run
