#!/bin/bash

IFS_O=$IFS
IFS=$'\n'
dir=$1

cd $dir
# if [ -z $dir ]; then
#  dir=$(pwd)
# fi
# echo directory : $dir


for i in $(ls -R); do
  if [[ $i =~ : ]]; then 
    top=$( echo $i | sed 's/:/\//')
    echo top : $top
    continue
  fi
  if [[ $i == *".url" ]] ; then
    echo i: $i
    url=$(cat $top$i | grep -v 'InternetShortcut' | sed 's/URL=//')
#    echo \* $i >> ${top}_url
#    echo $url >> ${top}_url
    echo \* $i >> urls
    echo $url >> urls
  fi
done

IFS=$IFS_O
