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
  mashina_is_variable_defined PS
}

function mashina_is_mashina_loaded {
  mashina_is_variable_defined "$MASHINA_ROOT"
}

function mashina_is_macos {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo true
  else
    echo false
  fi
}

function mashina_is_debian {
  mashina_is_file_present /etc/debian_version
}

function mashina_is_bash {
  mashina_is_variable_defined "$BASH_VERSION"
}

function mashina_is_zsh {
  mashina_is_variable_defined "$ZSH_VERSION"
}

function mashina_commit_hash {
  local commit_hash
  commit_hash="$(git -C "$MASHINA_SOURCE" rev-parse --short=6 master)"
  echo "$commit_hash"
}

function mashina_version {
  local commit_hash="$(git -C "$MASHINA_SOURCE" rev-parse --short=6 master)"
  echo "$commit_hash"
}

export GLOBAL_CONFIG="$HOME/.config"
export MASHINA_ROOT="$GLOBAL_CONFIG/mashina"
export MASHINA_SOURCE="$HOME/repos/mashina"
export MASHINA_INIT="$MASHINA_ROOT/init"
export MASHINA_BIN="$MASHINA_ROOT/bin"
export MASHINA_OPT="$MASHINA_ROOT/opt"
export MASHINA_FUNCTIONS="$MASHINA_ROOT/functions"
export MASHINA_TMP="$MASHINA_ROOT/tmp"
export MASHINA_IS_DEBIAN=false
# export TERM=xterm-kitty
# export TERM=tmux

# export MASHINA_VERSION
# export LC_ALL="en_US.UTF-8"

# TODO: make path for macos
# export BASE_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
export BASE_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH="$MASHINA_BIN:$BASE_PATH"

# TOOLS
export TERRA_ROOT_PATH="$HOME/repos/terraform-aws-services"
export INV_ANSIBLE_PATH="$HOME/repos/ansible"
export TFLINT_CONFIG_FILE="$GLOBAL_CONFIG/tflint/.tflint.hcl"
