#!/bin/bash
testDir=/user/yura/
checkDir(){
    if [ -d ${testDir} ]; then 
        echo "true"
        else echo "false"
    fi
    if [ -e ${testFile374} ]; then 
        echo "true"
        else echo "false"
    fi
}
checkDir
