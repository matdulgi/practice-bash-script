#!/bin/bash

echo all argument : $@
argarr=$*
argarr2=($*)
echo argarr@ : ${argarr[@]}
echo argarr1 : ${argarr[1]}
echo argarr2 : ${argarr[2]}
echo argarr2@ : ${argarr2[@]}
echo argarr21 : ${argarr2[1]}
echo argarr22 : ${argarr2[2]}

for((i=1; i<$#; i++));do
    echo arg $i : ${argarr[$i]}
done

