source recipes/helpers/main.sh

FONTS_HOME="$HOME/Library/Fonts"

function run {
  install
}

function install_debian {
  exit 0
}

function install_macos {
  brew tap homebrew/cask-fonts
  brew install --cask font-jetbrains-mono-nerd-font
  brew install --cask font-sauce-code-pro-nerd-font
  brew install --cask font-fantasque-sans-mono-nerd-font
}

function install_macos_ {
  FONT_PATH="$MASHINA_OPT/font-source-code"

  # INSTALL SOURCE CODE PRO FONT
  git clone --depth 1 git@github.com:adobe-fonts/source-code-pro.git $FONT_PATH
  cp $FONT_PATH/OTF/* $FONTS_HOME
  rm -rf $FONT_PATH

  # INSTALL NERD FONTS SYMBOLS
  wget -P $FONTS_HOME "https://github.com/ryanoasis/nerd-fonts/blob/master/patched-fonts/NerdFontsSymbolsOnly/complete/Symbols-2048-em%20Nerd%20Font%20Complete%20Mono.ttf"
}

function install_ibm_plex_mono {
  git clone --depth=1 git@github.com:IBM/plex.git $$MASHINA_OPT/imb_plex

  URL="https://github.com/IBM/plex/blob/master/IBM-Plex-Mono/fonts/complete/ttf"

  wget -O "$FONTS_HOME/IBMPlexMono-Bold.ttf" "$URL/IBMPlexMono-Bold.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-BoldItalic.ttf" "$URL/IBMPlexMono-BoldItalic.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-ExtraLight.ttf" "$URL/IBMPlexMono-ExtraLight.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-ExtraLightItalic.ttf" "$URL/IBMPlexMono-ExtraLightItalic.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-Italic.ttf" "$URL/IBMPlexMono-Italic.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-Light.ttf" "$URL/IBMPlexMono-Light.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-LightItalic.ttf" "$URL/IBMPlexMono-LightItalic.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-Medium.ttf" "$URL/IBMPlexMono-Medium.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-MediumItalic.ttf" "$URL/IBMPlexMono-MediumItalic.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-Regular.ttf" "$URL/IBMPlexMono-Regular.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-SemiBold.ttf" "$URL/IBMPlexMono-SemiBold.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-SemiBoldItalic.ttf" "$URL/IBMPlexMono-SemiBoldItalic.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-Text.ttf" "$URL/IBMPlexMono-Text.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-TextItalic.ttf" "$URL/IBMPlexMono-TextItalic.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-Thin.ttf" "$URL/IBMPlexMono-Thin.ttf?raw=true"
  wget -O "$FONTS_HOME/IBMPlexMono-ThinItalic.ttf" "$URL/IBMPlexMono-ThinItalic.ttf?raw=true"
}

run
