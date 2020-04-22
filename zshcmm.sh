#!/bin/bash
#---------------------( Commit my zshrc file )-----------------------#

DIRZSH="$HOME/zshcmm"

if [ -f $DIRZSH"/.zshrc" ]; then
    rm -rf .zshrc
fi

MYZSH="$HOME/.zshrc"

if [ -e $MYZSH ] && [ -e $DIRZSH ]; then
    cp $MYZSH $DIRZSH

    DATE=$(date +%d/%m/%Y)

    git add .
    git commit -m "My zshrc $DATE"

    clear

    git push origin master
fi
