source recipes/helpers/main.sh

function run {
  install
}

function install_debian {
  apt install -y linux-headers-$(uname -r) dkms
  URL="https://download.virtualbox.org/virtualbox/6.1.42/virtualbox-6.1_6.1.42-155177~Debian~bullseye_amd64.deb"
  wget -O $MASHINA_TMP/virtualbox.deb $URL
  apt install -y $MASHINA_TMP/virtualbox.deb
  rm $MASHINA_TMP/virtualbox*.deb
}

function install_macos {
  brew install virtualbox
}

run
