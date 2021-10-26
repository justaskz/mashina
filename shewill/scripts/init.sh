#!/usr/bin/env bash

export BASE_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"

export LOCAL="$HOME/.local"
export LOCAL_INIT="$LOCAL/init"
export LOCAL_BIN="$LOCAL/bin"
export LOCAL_OPT="$LOCAL/opt"
export LOCAL_FUNCTIONS="$LOCAL/functions"
export LOCAL_TMP="$LOCAL/tmp"

PATH="$LOCAL_BIN:$BASE_PATH"

mkdir -p $LOCAL
mkdir -p $LOCAL_BIN
mkdir -p $LOCAL_INIT
mkdir -p $LOCAL_OPT
mkdir -p $LOCAL_FUNCTIONS
mkdir -p $LOCAL_TMP
