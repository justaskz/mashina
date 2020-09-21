#!/usr/bin/env bash

#!/usr/bin/env bash

source recipes/helpers/install.sh

function run {
  config
  # exit_if_installed bash
  install
}

function config {
  cp files/bash/config/bash.sh $LOCAL_CONFIG
  cp files/bash/.bashrc $HOME
}

function install_debian {
  VERSION="bash-5.0"
  LINK="http://ftp.gnu.org/gnu/bash/$VERSION.tar.gz"
  wget $LINK -P $LOCAL_OPT
  cd $LOCAL_OPT
  tar xf $VERSION.tar.gz
  rm $VERSION.tar.gz
  cd $VERSION
  ./configure
  make
  cd
  ln -s $LOCAL_OPT/$VERSION/bash $LOCAL_BIN/bash
}

$@
