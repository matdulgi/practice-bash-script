#!/bin/bash

str1="a b c d e"
str2="a:b:c:d:e"
str3="a^b^c^d^e"
echo $str1
echo $str2
echo $str3

echo str1 separate Test
for tmp in $str1; do
    echo $tmp
done

echo str2 separate Test
for tmp in $str2; do
    echo $tmp
done


echo
echo change IFS to :
old_ifs=$IFS
IFS=":;^"
echo

echo $str1
echo $str2
echo str1 separate Test
for tmp in $str1; do
    echo $tmp
done
echo str2 separate Test
for tmp in $str2; do
    echo $tmp
done

echo str3 separate Test
str3="a^b^c^d^e"
echo $str3
for tmp in $str3; do
    echo $tmp
done

IFS=$old_ifs

