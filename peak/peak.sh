#!/bin/bash
ZIP=$1
FILE=$2
if [ ! -f $ZIP ]; then
    echo "peak.sh: $ZIP: No such file"
    exit
fi
7z x -o./.peak $ZIP $FILE
FILE=./.peak/$FILE
if [ ! -f $FILE ]; then
    echo "peak.sh: $FILE: No such file"
    exit
fi
nano -v $FILE
rm -r ./.peak
