#!/bin/bash
#---------------------( Commit my zshrc file )-----------------------#

if [ -f ".zshrc" ]; then
    rm -rf .zshrc
fi

# Copy and paste zshrc
ZSHRC=$(cat ~/.zshrc)
echo -e $ZSHRC >> .zshrc

DATE=$(date +%d/%m/%Y)

git add .
git commit -m "My zshrc $DATE"

clear

git push origin master