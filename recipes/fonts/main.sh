source recipes/helpers/main.sh

function run {
  install
}

function install_debian {
  exit 0
}

function install_macos {
  FONTS_HOME="$HOME/Library/Fonts"
  FONT_PATH="$MASHINA_OPT/font-source-code"

  # INSTALL SOURCE CODE PRO FONT
  git clone --depth 1 git@github.com:adobe-fonts/source-code-pro.git $FONT_PATH
  cp $FONT_PATH/OTF/* $FONTS_HOME
  rm -rf $FONT_PATH

  # INSTALL NERD FONTS SYMBOLS
  wget -P $FONTS_HOME "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-2048-em%20Nerd%20Font%20Complete%20Mono.ttf"
}

run
