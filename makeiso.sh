#!/bin/bash

# Script make iso from file or folder (parameter ARG). Require genisoimage utility.
# 25.10.2017

ARG=$1
EXT='.iso'
fname="${ARG%.*}"
genisoimage -o $fname$EXT $ARG
