#!/bin/sh

#checking arguments are valid. If not exit 1.

if [ $# -lt 2 ]
then
    echo "Error: not a valid arguments."
    exit 1
fi

writeFile=$1
writeStr=$2
dir=$(dirname "$writeFile")

#checking directory is valid. if not create directory
if [ ! -d $dir ]
then
    mkdir -p $dir
fi

if echo $writeStr >> $writeFile
then
    exit 0
else
    echo "Error: not able to write."
    exit 1
fi
