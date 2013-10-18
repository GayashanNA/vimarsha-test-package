#!/usr/bin/env bash

function detect_path {
    local uniquefile=".test_package_uniquefile"
    
    if [ -f "./${uniquefile}" ]; then
        xxTEST_PACKAGE_DIRxx=$(pwd)
    else
	detection_failed=true
	echo "Please go to the TEST PACKAGE DIRECTORY when sourcing env.sh"
    fi
}

detect_path

if [ ! -z $detection_failed ]; then
    unset detection_failed
    return
fi

# Append `bin/' directory to PATH
if [ -z "${PATH}" ]; then
  export PATH=${xxTEST_PACKAGE_DIRxx}/bin
else
  export PATH=${PATH}:${xxTEST_PACKAGE_DIRxx}/bin
fi

echo "Environment setup successful!"
