#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Useage: $0 filename";
    exit -1;
fi

filename=$1;

egrep -o "\b[[:alpha:]]\b" $filename | \
awk '{ count[$0]++ }
END { printf("%-14s%s\n", "word", "count");
    for (i in count)
    { printf("%-14s%d\n", i, count[i]); }
}'
