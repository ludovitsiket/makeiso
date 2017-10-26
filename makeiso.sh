#!/bin/bash

# Script make iso from file or folder (parameter ARG). Require genisoimage utility.
# 25.10.2017

function iso {
    ARG=$1
    EXT='.iso'
    fname="${ARG%.*}"
    genisoimage -o $fname$EXT $ARG
}

function syntax {
    echo "Syntax: bash makeiso.sh [argument]"
    echo "        argument is .zip file or folder (without \ at end of folder name)"
}

if [ $# -eq 0 ]
  then
    syntax
  else
    iso $1
fi

