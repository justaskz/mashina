source recipes/helpers/main.sh

function run {
  exit_if_installed bats
  install
}

function install {
  git clone --depth 1 https://github.com/bats-core/bats-core.git "$MASHINA_OPT/bats"
  ln -sf "$MASHINA_OPT/bats/bin/bats" "$MASHINA_BIN/bats"
  ln -sf "$MASHINA_SOURCE/recipes/bats/init/bats.sh" "$MASHINA_INIT"

  mkdir -p "$MASHINA_OPT/bats-libraries"
  git clone --depth 1 https://github.com/ztombol/bats-support.git "$MASHINA_OPT/bats-libraries/bats-support"
  git clone --depth 1 https://github.com/ztombol/bats-assert.git "$MASHINA_OPT/bats-libraries/bats-assert"
}

run
