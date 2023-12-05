source recipes/helpers/main.sh

function run {
  exit_if_installed command
  install
}

function install_debian {
  exit 0
}

function install_macos {
  # books_manager
  # inv

  # projectile
  ln -sf "$HOME/repos/projectile/bin/projectile" "$MASHINA_BIN"

  # syncros
  ln -sf "$HOME/repos/syncros/bin/syncros" "$MASHINA_BIN"

  # mouse
  ln -sf "$HOME/repos/mouse/mouse.rb" "$MASHINA_BIN/mouse"

  # terra
  ln -sf "$HOME/repos/terra/bin/terra" "$MASHINA_BIN"
}

run
