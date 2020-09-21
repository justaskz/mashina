#!/usr/bin/env bash

export BASE_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"

export LOCAL="$HOME/.local"
export LOCAL_BIN="$LOCAL/bin"
export LOCAL_CONFIG="$LOCAL/config"
export LOCAL_OPT="$LOCAL/opt"
export LOCAL_TMP="$LOCAL/tmp"

PATH="$BASE_PATH:$LOCAL_BIN"
