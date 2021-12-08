#!/bin/bash

echo $*
echo $#
echo $1
echo $2
echo $3
echo $4
echo $5

IFS=":^"
echo after mod IFS

echo $*
echo $#
echo $1
echo $2
echo $3
echo $4
echo $5
IFS=" \t\n"
