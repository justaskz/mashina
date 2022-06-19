#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  config
  install
}

function install_debian {
  VERSION="4.4"
  # VERSION="5.1"
  IS_LATEST_VERSION=$(echo $BASH_VERSION | grep "$VERSION")
  if [ -n "$IS_LATEST_VERSION" ]; then exit 0; fi
  echo "Installing Bash $VERSION..."
  FOLDER_NAME="bash-$VERSION"
  FILE_NAME="$FOLDER_NAME.tar.gz"
  LINK="http://ftp.gnu.org/gnu/bash/$FILE_NAME"
  wget $LINK -P $MASHINA_OPT
  cd $MASHINA_OPT
  tar xf $FILE_NAME
  rm $FILE_NAME
  cd $FOLDER_NAME
  ./configure
  make
  cd
  ln -s $MASHINA_OPT/$FOLDER_NAME/bash $MASHINA_BIN/bash
  # find how to replace original bash. symlink is not enough
}

function config {
  cp recipes/bash/dotfiles/.bashrc $MASHINA_INIT
}

$@
