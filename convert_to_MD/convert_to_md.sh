#!/usr/bin/env bash

IFS_T=$IFS
IFS=$'\n'

#for i in $(ls */*); do
#for i in $(ls **/*); do
#  sed -i "" 's/^\s*ㅇ/# /' $i
#  sed -i "" 's/^\s*ㅁ/### /' $i
#done


arr=( $(ls -R ) )

for i in ${arr[@]}; do
  echo i : $i
  if [[ $i == *":" ]]; then 
    top=$( echo $i | sed 's/:/\//')
    echo top : $top
    continue
  fi
  
# in macox, sed need backup option ""
  if [[ './'$i != $0 ]]; then
    file=${top}/$i
    echo file : $file
    sed -i "" 's/^\s*ㅇ/# /' ${top}$i > /dev/null
    sed -i "" 's/^\s*ㅁ/### /' ${top}$i > /dev/null
#    sed  's/^\s*ㅇ/# /' ${top}/$i
#    sed  's/^\s*ㅁ/### /' ${top}/$i
  fi
done


IFS=$IFS_T
