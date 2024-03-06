source recipes/helpers/main.sh

function run {
  # exit_if_installed nix
  install
}

function install_debian {
  sh <(curl -L https://nixos.org/nix/install) --no-daemon
  ln -sf "$HOME/.nix-profile/bin/*" "$MASHINA_BIN"

}

function install_macos {
  exit 0
}

run
