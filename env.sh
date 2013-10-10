#!/usr/bin/env bash

function detect_path {
    local uniquefile=".test_package_uniquefile"
    
    if [ -f "./${uniquefile}" ]; then
        xxTEST_PACKAGE_DIRxx=$(pwd)
    fi
}

detect_path

# Append `bin/' directory to PATH
if [ -z "${PATH}" ]; then
  export PATH=${xxTEST_PACKAGE_DIRxx}/bin
else
  export PATH=${PATH}:${xxTEST_PACKAGE_DIRxx}/bin
fi
