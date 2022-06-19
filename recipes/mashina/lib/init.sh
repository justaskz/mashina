#!/usr/bin/env bash

export BASE_PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin"

export MASHINA_INIT="$MASHINA_ROOT/init"
export MASHINA_BIN="$MASHINA_ROOT/bin"
export MASHINA_OPT="$MASHINA_ROOT/opt"
export MASHINA_FUNCTIONS="$MASHINA_ROOT/functions"
export MASHINA_TMP="$MASHINA_ROOT/tmp"

PATH="$MASHINA_BIN:$BASE_PATH"

mkdir -p $MASHINA_ROOT
mkdir -p $MASHINA_BIN
mkdir -p $MASHINA_INIT
mkdir -p $MASHINA_OPT
mkdir -p $MASHINA_FUNCTIONS
mkdir -p $MASHINA_TMP
