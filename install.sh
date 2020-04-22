#!/bin/bash

curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

MYZSH="$HOME/.zshrc"
DIRZSH="$HOME/zshcmm"

if [ -e $MYZSH ] && [ -e $DIRZSH ]; then
    cp $DIRZSH $MYZSH
fi