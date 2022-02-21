#!/bin/bash

function checkIsDir {
if [ -d $1 ]; then
  echo its directory
else
  echo its not directory
fi
}

checkIsDir ~/.vim
checkIsDir ~/.vimrc
