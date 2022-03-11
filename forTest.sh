#!/bin/bash

echo test for loop with list
list=(1 2 3)
for i in ${list[@]}; do
    echo $i
done

echo test for loop with range formed list
for i in {1..3}; do
    echo $i
done
echo test for loop with range formed list 001
for i in {001..3}; do
    echo $i
done


echo test for loop with three-param expression 
for ((i=0; i<3; i++))
do
    echo three param expressoin
done



echo test for loop with range formed list with var
#doesnt work with $max
max=4
echo max : $max
for ((i=1; i<=$max; i++))
do 
    echo formed list with var test
done


echo for loop with curly braces
for i in (1..3); do
    echo with no curly braces
done
