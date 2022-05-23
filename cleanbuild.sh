#! /bin/bash
PROJEXT_PATH=$( pwd )
BUILD_PATH="${PROJEXT_PATH}/build"
BIN_PATH="${PROJEXT_PATH}/bin"
if [ -d "$BUILD_PATH" ];then
  rm -r build/
fi
if [ -d "$BIN_PATH" ];then
  rm -r bin/
fi