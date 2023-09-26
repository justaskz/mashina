source recipes/helpers/main.sh

function run {
  update_config
  exit_if_installed go
  install
}

function update_config {
  ln -sf $MASHINA_SOURCE/recipes/golang/init/go.sh $MASHINA_INIT
}

function install_debian {
  exit 0
}

function install_macos {
  brew install golang
  go install golang.org/x/tools/gopls@latest
  go install golang.org/x/tools/cmd/goimports@latest
  mkdir -p $HOME/go/src/github.com/justaskz
}

run
