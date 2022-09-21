source recipes/mashina/lib/main.sh

function install {
  if [ -f "/etc/debian_version" ]; then
    install_debian
  fi

  if [[ "$OSTYPE" == "darwin"* ]]; then
    install_macos
  fi
}

function exit_if_installed {
  COMMAND_NAME=$1
  if hash $COMMAND_NAME 2> /dev/null; then exit 0; fi
}

function update_config {
  if $(mashina_is_macos); then
    update_config_macos
  fi

  if $(mashina_is_debian); then
    update_config_debian
  fi
}

function exec_custom_or_run {
  if [[ "$(type $@ 2> /dev/null)" ]]; then
    $@
  else
    run
  fi
}
