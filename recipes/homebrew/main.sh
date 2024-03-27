source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed brew
  install
}

function update_config_debian {
  ln -sf "$MASHINA_SOURCE/recipes/homebrew/init/homebrew_linux.sh" "$MASHINA_INIT/homebrew.sh"
}

function update_config_macos {
  ln -sf "$MASHINA_SOURCE/recipes/homebrew/init/homebrew.sh" "$MASHINA_INIT/homebrew.sh"
}

function install_debian {
  exit 0
}

function install_macos {
  # DEFAULT
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # LOCAL
  # git clone --depth 1 https://github.com/Homebrew/brew $MASHINA_OPT/homebrew
  # ln -s $MASHINA_OPT/homebrew/bin/brew $MASHINA_BIN
}

run
