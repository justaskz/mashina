source recipes/helpers/main.sh

function run {
  update_config
  # exit_if_installed command
  # install
}

function update_config {
  cp recipes/git/dotfiles/.git* $HOME
}

# function install_debian {
#   # installation commands
# }

# function install_macos {
#   # installation commands
# }

run
