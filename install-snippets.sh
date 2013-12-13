#!/bin/bash

MY_SNIPPETS=~/Dropbox/dotfiles/vim/mySnippets/*
OLD_FILES=~/.vim/bundle/snipmate-snippets/snippets/*
DESTINATION_DIRECTORY=~/.vim/bundle/snipmate-snippets/snippets
BACKUP_DIRECTORY=~/.vim/bundle/snipmate-snippets/snippets/backup

echo "creating backup of all default snippets"
mkdir -p $BACKUP_DIRECTORY

for file in $OLD_FILES
do
  if [ ! -d "$file" ]; then
    echo "backing up $file"
    mv $file $BACKUP_DIRECTORY
  fi
done


echo "creating links from my snippets to $DESTINATION_DIRECTORY"
for file in $MY_SNIPPETS
do
  echo "performing ln -s $file $DESTINATION_DIRECTORY"
  ln -s $file $DESTINATION_DIRECTORY
done
