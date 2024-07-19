source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  install
}

function install_debian {
  apt install -y linux-headers-$(uname -r) dkms
  URL="https://download.virtualbox.org/virtualbox/7.0.12/virtualbox-7.0_7.0.12-159484~Debian~bullseye_amd64.deb"
  wget -O "$MASHINA_TMP/virtualbox.deb" "$URL"
  apt install -y "$MASHINA_TMP/virtualbox.deb"
  rm "$MASHINA_TMP/virtualbox.deb"
}

function install_macos {
  brew install virtualbox
}

run
