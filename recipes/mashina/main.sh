# source recipes/helpers/main.sh

function run {
  install
}

function install {
  source recipes/mashina/lib/mashina_env.sh

  mkdir -p "$MASHINA_ROOT"
  mkdir -p "$MASHINA_BIN"
  mkdir -p "$MASHINA_INIT"
  mkdir -p "$MASHINA_OPT"
  mkdir -p "$MASHINA_FUNCTIONS"
  mkdir -p "$MASHINA_TMP"

  cp recipes/mashina/dotfiles/.bashrc "$HOME"
  cp recipes/mashina/dotfiles/.zshrc "$HOME"
  ln -sf "$MASHINA_SOURCE/recipes/mashina/lib/main.sh" "$MASHINA_ROOT/main.sh"
  ln -sf "$MASHINA_SOURCE/recipes/mashina/lib/mashina_env.sh" "$MASHINA_ROOT/mashina_env.sh"
  ln -sf "$MASHINA_SOURCE/recipes/mashina/lib/aliases.sh" "$MASHINA_ROOT/aliases.sh"

  for FILE in $MASHINA_SOURCE/recipes/mashina/functions/*.sh; do
    if [[ -a $FILE ]]; then
      ln -sf "$FILE" "$MASHINA_FUNCTIONS"
    fi
  done
}

run
