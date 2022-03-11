#!/bin/bash

list1=(1 2 3 4 5)
list2=({3..7})

#cannot get all element with tlist
echo list1 ${tist1[@]}
echo list2 ${list2[@]}

for i in ${list1[@]}; do
echo list1 loop test
done



#list with for loop expression
list3={(i=1; i<5; i++)}
