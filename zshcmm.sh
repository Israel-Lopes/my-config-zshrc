#!/bin/bash
#---------------------( Commit my zshrc file )-----------------------#

if [ -f ".zshrc" ]; then
    rm -rf .zshrc
fi

MYZSH="$HOME/.zshrc"
DIRZSH="$HOME/zshcmm"

if [ -e $MYZSH ] && [ -e $DIRZSH ]; then
    cp $MYZSH $DIRZSH
    
    DATE=$(date +%d/%m/%Y)

    git add .
    git commit -m "My zshrc $DATE"
    
    clear
    
    git push origin master
fi
 