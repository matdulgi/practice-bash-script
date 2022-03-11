#!/bin/bash

inputFile=""
outputFile=""
destHost=""
dirDepth=0

help(){
    echo "USAGE" 
    echo "  getFileList -i [inputFile] [-d destHost]"
    echo "  ex) getFileList -i hdfs://pc00m0002.pcn0c01.hcloud.io:8020/user/bdc_master"
    echo "  ex) getFileList -i hdfs://pc00m0002.pcn0c01.hcloud.io:8020/user/bdc_master -d hdfs://pc00m0001.pcn0c01.hcloue.io:8020"
    echo ""
    echo "OPTIONS"
    echo "  -i    input file's FQDN"
    echo "  -D    destinaon host's hostname"
    echo "  -d    directory depth for copy"
}


while getopts "i:d:D:h" opt
do
    case $opt in
        i)
            inputFile=$OPTARG
            echo inputFile : $inputFile
            ;;
        d)
            dirDepth=$OPTARG
            echo dirDepth : $dirDepth
            if [$dirDepth lt 1];then
                echo "directory depth must be grater then 0"
                exit
            ;;
        D)
            destHost=$OPTARG
            echo destHost : $destHost
            ;;
        h)
            help
            ;;
    esac        
done

list=$(ls -al $inputFile)

