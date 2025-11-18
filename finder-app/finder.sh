#!/bin/sh

#checking the arguments count. if not valid count exit 1.

if [ $# -lt 2 ]
then
    echo "Error: Arguments are not valid."
    exit 1
fi

filesDir=$1
searchStr=$2

#checking filesDir is valid. If not exit 1.

if [ ! -d $filesDir ]
then
    echo "Error: $filesDir is not valid."
    exit 1
else
    linesCount=$(grep -r "$searchStr" "$filesDir" | wc -l)
    filesCount=$(grep -rl "$searchStr" "$filesDir" | wc -l)
    echo "The number of files are $filesCount and the number of matching lines are $linesCount"
    exit 0
fi