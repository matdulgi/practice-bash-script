#!/bin/bash

keywords=$( echo $@ | cut -f 2- -d ' ' )
for i in $keywords; do
  grep_opt="${grep_opt} -e $i"
done
mod=""

# echo search dict : $keywords
# echo grep_cmd : grep $grep_opt

IFS_O=$IFS
IFS=$'\n'

#result=gnac_result


function help(){
  echo usage: search.sh path keyword1 [keyword2 ...]
}

#parse ls -R
# ls-R directory example) ./dir1/dir2:
# need to convert it like './dir1/dir2/'
function convert_dir(){
#  return $( echo $i | sed 's/:/\//')
  echo $i | sed 's/:/\//'
}

# 
if [ ! -e $1 ]; then
  echo no such file or directory
  help
  exit
elif [ -d $1 ]; then
  mod=dir
#  echo mod : dir
  dir=$1
  echo directory : $dir
elif [ -f $1 ]; then
  echo mod : file
#  mod=file
else 
  echo "exception"
fi

#
if [ -z $2 ]; then
  echo no keyword
  help
  exit
fi

#rm_wd=.txt
#echo "# file list" >> $result
#for i in $(ls -R); do
#  if [[ $i != $result && './'$i != $0 ]];then
#    echo \* $i | sed "s/$rm_wd//" >> $result
#  fi
#done
#
#echo "" >> $result
#echo "" >> $result


case $mod in 
  dir)
    for i in $(ls -R); do
      if [[ $i =~ : ]]; then 
        top=$(convert_dir $i)
        echo ' '
        echo ### top : $top
        continue
      fi

      echo ' '
      file=$top$i
      echo file : $file

    if [[ $i != $result && './'$i != $0 ]];then

      eval "cat $file | grep $grep_opt"
    fi
    done
    ;;

  file)
    eval "cat $1 | grep $grep_opt"
    ;;
esac


IFS=$IFS_O
