#!/bin/bash

if [[ $OS_NAME == "macos" ]] && [[ $COMPILER == "gcc" ]]; then
    export CXX=g++-9
    export CC=gcc-9
elif [[ $OS_NAME == "linux" ]] && [[ $COMPILER == "clang" ]]; then
    export CXX=clang++
    export CC=clang
fi

conda create -q -y -n test_env python=3.8
source activate test_env

conda info

conda list --show-channel-urls

conda install -y -n test_env matplotlib
