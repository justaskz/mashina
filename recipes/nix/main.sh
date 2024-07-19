source "$MASHINA_SOURCE/recipes/helpers/main.sh"

function run {
  # exit_if_installed nix
  install
}

function install_debian {
  mkdir -p "$HOME/.config/nix"
  sh <(curl -L https://nixos.org/nix/install) --no-daemon --store="$HOME/.config/nix"
  ln -sf "$HOME/.nix-profile/bin/*" "$MASHINA_BIN"

  export VERSION=2.20.5
  export SYSTEM=aarch64-linux
  curl -LO https://releases.nixos.org/nix/nix-$VERSION/nix-$VERSION-$SYSTEM.tar.xz
  tar -xvf nix-$VERSION-$SYSTEM.tar.xz
  # tar xfj nix-$VERSION-$SYSTEM.tar.xz

  export NIX_ROOT="$HOME/.config/nix"
  cd nix-$VERSION-$SYSTEM
  ./install
}

function install_macos {
  exit 0
}

run
