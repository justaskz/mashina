source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed brew
  install
}

function update_config {
  cp recipes/homebrew/init/homebrew.sh $MASHINA_INIT
}

function install_macos {
  # DEFAULT
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  # LOCAL
  # git clone --depth 1 https://github.com/Homebrew/brew $MASHINA_OPT/homebrew
  # ln -s $MASHINA_OPT/homebrew/bin/brew $MASHINA_BIN
}

run
