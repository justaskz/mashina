function mashina_is_file_present {
  if [[ -f $1 ]]; then
    echo true;
  else
    echo false
  fi
}

function mashina_is_string_present {
  if [[ "$1" =~ "$2" ]]; then
    echo true
  else
    echo false
  fi
}

function mashina_is_variable_defined {
  if [[ -n "$1" ]]; then
    echo true
  else
    echo false
  fi
}

function mashina_is_shell_interactive {
  echo "$(mashina_is_variable_defined PS)"
}

function mashina_is_mashina_loaded {
  echo "$(mashina_is_variable_defined MASHINA_ROOT)"
}

function mashina_is_macos {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo true
  else
    echo false
  fi
}

function mashina_is_debian {
  echo "$(mashina_is_file_present /etc/debian_version)"
}

function mashina_is_bash {
  echo "$(mashina_is_variable_defined $BASH_VERSION)"
}

function mashina_is_zsh {
  echo "$(mashina_is_variable_defined $ZSH_VERSION)"
}

export GLOBAL_CONFIG="$HOME/.config"
export MASHINA_ROOT="$GLOBAL_CONFIG/mashina"
export MASHINA_SOURCE="$HOME/repos/mashina"
export MASHINA_INIT="$MASHINA_ROOT/init"
export MASHINA_BIN="$MASHINA_ROOT/bin"
export MASHINA_OPT="$MASHINA_ROOT/opt"
export MASHINA_FUNCTIONS="$MASHINA_ROOT/functions"
export MASHINA_TMP="$MASHINA_ROOT/tmp"
# export LC_ALL="en_US.UTF-8"

# export MASHINA_IS_LOADED="$(mashina_is_mashina_loaded)"
# export MASHINA_IS_FRESH="$(is_mashina_fresh)"
# export MASHINA_IS_DEBIAN="$(mashina_is_debian)"
# export MASHINA_IS_MACOS="$(mashina_is_macos)"
# export MASHINA_IS_BASH="$(mashina_is_bash)"
# export MASHINA_IS_ZSH="$(mashina_is_zsh)"
# export MASHINA_IS_SHELL_INTERACTIVE="$(mashina_is_shell_interactive)"

# TODO: make path for macos
# export BASE_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
export BASE_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$MASHINA_BIN:$BASE_PATH"
export TERRA_ROOT_PATH=$HOME/repos/terraform-aws-services
