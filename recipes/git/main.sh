source recipes/helpers/main.sh

function run {
  update_config
  # exit_if_installed git
  install
}

function update_config {
  cp recipes/git/dotfiles/.git* $HOME
}

function install_macos {
  brew install git
}

function install_debian {
  VERSION="2.39.0"
  URL="https://mirrors.edge.kernel.org/pub/software/scm/git/git-$VERSION.tar.gz"
  NAME="git"
  download_and_install $NAME $URL
}

run
