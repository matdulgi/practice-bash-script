#!/bin/bash

a=hello
b=$a

echo $b



x=hello
y=x

echo $$y
#it parsed $$ fitst, $$ is parsed to own value 91399, result is 91399z


eval 'echo $'$y''
eval 'echo $$y'

#eval ignore quote, substitute

