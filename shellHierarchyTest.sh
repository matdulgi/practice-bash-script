#/bin/bash

echo current shell
ps -ef | grep -e bash -e "\ssh\s" | awk '{print $1" "$2" "$3" "$8}'

echo
echo sub shell
(ps -ef | grep -e bash -e "\ssh\s" | awk '{print $1" "$2" "$3" "$8}')


