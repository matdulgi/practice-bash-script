#!/bin/bash

word=var

echo  - it prints only start with 'var'
ls -al | awk '{print $9}' | grep '^var'
echo

echo  - how is will it go with param substitution with regex
ls -al | awk '{print $9}' | grep '^${word}'
echo word='^${word}'
echo param substitution won't work with single quotation '

echo 
echo - how about with double quotation
ls -al | awk "{print $9}" | grep "^${word}"
echo "${word}"
echo awk do not work woth double quotation
echo if it needs to use prarm Sub in RegEx, it needs to double quotation. but some commands require single quotation for those argument
so, it needs the way how do put paramSub in RegEs with single quotation


