#!/bin/bash

tlist=(1 2 3 4 5)
tlist2=({3..7})

echo tlist ${tlist[@]}
echo tlist2 ${tlist2[@]}



for i in ${tlist[@]}; do
echo li1
done

for i in $tlist2[@]; do
echo li2
done

