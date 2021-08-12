#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  config
  install
}

function config {
  cp files/bash/config/bash.sh $LOCAL_CONFIG
  cp files/bash/.bashrc $HOME
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
  wget $LINK -P $LOCAL_OPT
  cd $LOCAL_OPT
  tar xf $FILE_NAME
  rm $FILE_NAME
  cd $FOLDER_NAME
  ./configure
  make
  cd
  ln -s $LOCAL_OPT/$FOLDER_NAME/bash $LOCAL_BIN/bash
  # find how to replace original bash. symlink is not enough
}

$@
