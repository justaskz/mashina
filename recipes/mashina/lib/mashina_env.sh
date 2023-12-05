function mashina_is_file_present {
  if [[ -f $1 ]]; then
    echo true;
  else
    echo false
  fi
}

function mashina_is_string_present {
  if [[ "$1" =~ $2 ]]; then
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

function mashina_version {
  local commit_hash="$(git rev-parse --short=6 master)"
  local tag="$(git describe --tags `git rev-list --tags --max-count=1`)"

  echo "$tag ($commit_hash)"
}

export GLOBAL_CONFIG="$HOME/.config"
export MASHINA_ROOT="$GLOBAL_CONFIG/mashina"
export MASHINA_SOURCE="$HOME/repos/mashina"
export MASHINA_INIT="$MASHINA_ROOT/init"
export MASHINA_BIN="$MASHINA_ROOT/bin"
export MASHINA_OPT="$MASHINA_ROOT/opt"
export MASHINA_FUNCTIONS="$MASHINA_ROOT/functions"
export MASHINA_TMP="$MASHINA_ROOT/tmp"
# export MASHINA_VERSION
# export LC_ALL="en_US.UTF-8"

# TODO: make path for macos
# export BASE_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
export BASE_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$MASHINA_BIN:$BASE_PATH"
export TERRA_ROOT_PATH="$HOME/repos/terraform-aws-services"
export INV_ANSIBLE_PATH="$HOME/repos/ansible"
