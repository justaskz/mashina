source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  update_config
  exit_if_installed starship
  install
}

function update_config {
  local CONFIG="$GLOBAL_CONFIG/starship"
  mkdir -p "$CONFIG"
  ln -sf "$MASHINA_SOURCE/recipes/starship/config/starship.toml" "$CONFIG"
  ln -sf "$MASHINA_SOURCE/recipes/starship/init/starship.sh" "$MASHINA_INIT"
}

function install {
  wget https://raw.githubusercontent.com/starship/starship/master/install/install.sh -P "$MASHINA_TMP"
  mkdir -p "$MASHINA_OPT/starship"
  sh "$MASHINA_TMP/install.sh" --yes --bin-dir "$MASHINA_OPT/starship"
  rm "$MASHINA_TMP/install.sh"
  ln -sf "$MASHINA_OPT/starship/starship" "$MASHINA_BIN"
}

run
