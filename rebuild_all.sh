#!/bin/bash
BASE_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function do_echo() {
  local _begin_color="\033[31m"
  local _end_color="\033[0m"
  for _msg in "$@"; do
    echo -e "$_begin_color$_msg$_end_color"
  done
}

function rebuild_all() {
  local dirs=("$@")

  for dir in ${dirs[@]}; do
    do_echo ">>> Rebuilding $dir <<<"
    $BASE_PATH/rebuild.sh $dir
  done
}

rebuild_all \
  mingw-w64-python-astor \
  mingw-w64-python-backports.weakref \
  mingw-w64-python-gast \
  mingw-w64-python-grpcio \
  mingw-w64-python-termcolor \
