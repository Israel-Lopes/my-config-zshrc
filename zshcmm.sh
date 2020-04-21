#!/bin/bash
#---------------------( Commit my zshrc file )-----------------------#

# Copy and paste zshrc
ZSHRC=(cat ~/.zshrc)
echo ZSHRC > .zshrc

DATE=$(date +%d/%m/%Y)

git add .
git commit -m "My zshrc $DATE"

git push origin master