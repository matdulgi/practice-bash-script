#!/bin/bash

lsal=`ls -al`
echo $lsal

echo

lsal=$(ls -al)
echo $lsal


echo
echo doule command substitution test
var1=hello
var2=$var1

echo var1 : $var1
echo var2 : $var2



echo
echo CS for arr
idx=3
a=aaa
b=bbb
c=ccc
d=ddd
e=eee
arr=($a $b $c $d $e)
echo arr[] $[iex]: ${arr[$idx]}


echo    
echo CS calculate test
calval=5
echo $calval-5
#result : 5-5  >  print as string
