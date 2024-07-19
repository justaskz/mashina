source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  update_config
}

function update_config {
  if mashina__is_macos; then
    ln -sf "$MASHINA_SOURCE/recipes/ssh/config/config_client" "$HOME/.ssh/config"
  fi

  ln -sf "$MASHINA_SOURCE/recipes/ssh/config/rc" "$HOME/.ssh"

  ln -sf "$MASHINA_SOURCE/recipes/ssh/functions/fix_ssh.sh" "$MASHINA_FUNCTIONS"
  ln -sf "$MASHINA_SOURCE/recipes/ssh/functions/ssh_personal.sh" "$MASHINA_FUNCTIONS"
  ln -sf "$MASHINA_SOURCE/recipes/ssh/functions/ssh_nord.sh" "$MASHINA_FUNCTIONS"
}

run
