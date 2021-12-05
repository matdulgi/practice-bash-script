#!/bin/bash

while getopts ":ab:c:" opt; do
    echo OPTIND : $OPTIND
    case $opt in
        a)
            echo option a opt : $opt  optarg : $OPTARG 
            ;;
        b)
            echo option b opt : $opt  optarg : $OPTARG 
            ;;
        c)
            echo option c opt : $opt  optarg : $OPTARG
            ;;
        ?)
            echo option ? opt : $opt  optarg : $OPTARG
            ;;
        :)
            echo option : opt : $opt  optarg : $OPTARG 
            ;;
    esac
done
