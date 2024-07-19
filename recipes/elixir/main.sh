source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  exit_if_installed elixir
  install
}

function install_debian {
  exit 0
}

function install_macos {
  brew install elixir
}

run
