#!/bin/bash
PROJEXT_PATH=$( pwd )
BUILD_PATH="${PROJEXT_PATH}/build"
if [ -d "$BUILD_PATH" ];then
  echo "-- build has created "
else 
   mkdir build
fi
cd build
cmake ..
cmake --build .
cmake --install . --prefix "${PROJEXT_PATH}/bin"
