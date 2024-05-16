source recipes/helpers/main.sh

function run {
  exit_if_installed helm
  install
}

function install_debian {
  install_helm_debian
}

function install_macos {
  brew install helm
}

function install_helm_debian {
  curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
  sudo apt-get install apt-transport-https --yes
  echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
  sudo apt-get update
  sudo apt-get install helm
}

function install_helmfire {
  VERSION="0.164.0"
  URL="https://github.com/helmfile/helmfile/releases/download/v${VERSION}/helmfile_${VERSION}_linux_386.tar.gz"
  wget -P "$MASHINA_TMP" "$URL"
  mkdir -p "$MASHINA_OPT/helmfile"
  tar -xzv -f "$MASHINA_TMP/helmfile_${VERSION}_linux_386.tar.gz" -C "$MASHINA_OPT/helmfile"
  ln -sf "$MASHINA_OPT/helmfile/helmfile" "$MASHINA_BIN"
}

run
