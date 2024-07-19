function run {
  install
}

function install {
  source /opt/mashina/recipes/mashina/lib/mashina_env.sh

  mkdir -p "$MASHINA_CONFIG"
  mkdir -p "$MASHINA_BIN"
  mkdir -p "$MASHINA_INIT"
  mkdir -p "$MASHINA_OPT"
  mkdir -p "$MASHINA_FUNCTIONS"
  mkdir -p "$MASHINA_TMP"

  ln -sf "$MASHINA_SOURCE/recipes/mashina/dotfiles/.bashrc" "$HOME"
  ln -sf "$MASHINA_SOURCE/recipes/mashina/dotfiles/.zshrc" "$HOME"
  ln -sf "$MASHINA_SOURCE/recipes/mashina/lib/main.sh" "$MASHINA_CONFIG/main.sh"
  ln -sf "$MASHINA_SOURCE/recipes/mashina/lib/mashina_env.sh" "$MASHINA_CONFIG/mashina_env.sh"
  ln -sf "$MASHINA_SOURCE/recipes/mashina/lib/aliases.sh" "$MASHINA_CONFIG/aliases.sh"

  for FILE in $MASHINA_SOURCE/recipes/mashina/functions/*.sh; do
    if [[ -a $FILE ]]; then
      ln -sf "$FILE" "$MASHINA_FUNCTIONS"
    fi
  done
}

run
