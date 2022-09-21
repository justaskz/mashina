source recipes/helpers/main.sh

function run {
  install
}

function install_macos {
  brew install iterm2
}

function fonts {
  git clone "https://github.com/powerline/fonts.git" --depth=1 $MASHINA_TMP/fonts
  bash $MASHINA_TMP/fonts/install.sh
  rm -rf $MASHINA_TMP/fonts
}

run
