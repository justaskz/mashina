source "/recipes/helpers/main.sh"

function run {
  exit_if_installed crystal
  install
}

function install_debian {
  git clone --depth 1 https://github.com/crenv/crenv.git "$MASHINA_OPT/crenv"
  ln -sf "$MASHINA_OPT/crenv/bin/crenv" "$MASHINA_BIN"
  ln -sf "$MASHINA_SOURCE/recipes/crystal/init/crystal.sh" "$MASHINA_INIT"
}

function install_macos {
  brew install crystal crystalline
}

run
