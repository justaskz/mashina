source recipes/helpers/main.sh

function run {
  exit_if_installed bats
  install
}

function install {
  git clone --depth 1 https://github.com/bats-core/bats-core.git "$MASHINA_OPT/bats"
  ln -s "$MASHINA_OPT/bats/bin/bats" "$MASHINA_BIN/bats"
}

run
