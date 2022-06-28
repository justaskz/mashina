function is_file_present {
  if [[ -f $1 ]]; then
    echo true;
  else
    echo false
  fi
}

function is_string_present {
  if [[ "$1" =~ "$2" ]]; then
    echo true
  else
    echo false
  fi
}

# function is_variable_defined {
#   if [[ -z MASHINA_ROOT ]]; then
#     echo true
#   else
#     echo false
#   fi
# }

function is_mashina_loaded {
  echo "$(is_variable_defined MASHINA_ROOT)"
}

# function is_mashina_fresh {
#   echo false
# }

function is_macos {
  if [[ "$OSTYPE" == "darwin"* ]]; then
    echo true
  else
    echo false
  fi
}

function is_debian {
  echo "$(is_file_present /etc/debian_version)"
}

function is_bash {
  echo "$(is_string_present $SHELL bash)"
}

function is_zsh {
  echo "$(is_string_present $SHELL zsh)"
}

export MASHINA_ROOT="$HOME/mashina"
export MASHINA_INIT="$MASHINA_ROOT/init"
export MASHINA_BIN="$MASHINA_ROOT/bin"
export MASHINA_OPT="$MASHINA_ROOT/opt"
export MASHINA_FUNCTIONS="$MASHINA_ROOT/functions"
export MASHINA_TMP="$MASHINA_ROOT/tmp"

# export MASHINA_IS_LOADED="$(is_mashina_loaded)"
# export MASHINA_IS_FRESH="$(is_mashina_fresh)"
export MASHINA_IS_DEBIAN="$(is_debian)"
export MASHINA_IS_MACOS="$(is_macos)"
export MASHINA_IS_BASH="$(is_bash)"
export MASHINA_IS_ZSH="$(is_zsh)"

# TODO: make path for macos
# export BASE_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"
export BASE_PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
PATH="$MASHINA_BIN:$BASE_PATH"
PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
PATH="$HOME/.rbenv/shims:$PATH"
