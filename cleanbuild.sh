#! /bin/bash
PROJEXT_PATH=$( pwd )
BUILD_PATH="${PROJEXT_PATH}/build"
BIN_PATH=
if [ -d "$BUILD_PATH" ];then
  rm -r "$BUILD_PATH"
fi
