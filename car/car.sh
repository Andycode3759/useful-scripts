#!/bin/bash
CACHE_PATH=~/.car_cache/
if [ ! -d $CACHE_PATH ]; then
    mkdir $CACHE_PATH
fi
FILE=$1
if [ ! -f $FILE ]; then
    echo "car.sh: $FILE: No such file"
    exit
fi
MD5=$(md5sum $FILE)
# Remove the file name in the output of md5sum
IFS=' '
read -ra TEMP_ARR <<<"$MD5"
MD5=${TEMP_ARR[0]}
TARGET_BIN="${CACHE_PATH}${MD5}"

if [ ! -e $TARGET_BIN ]; then
    g++ -O2 -Wall -Wno-unused-result $FILE -o "_car.out"
    if [ $? -eq 0 ]; then
        # Compile success
        echo "Compile successful."
        mv ./_car.out $TARGET_BIN
    else
        # Compile failed
        echo "Compile failed, L"
        exit
    fi
fi

cp $TARGET_BIN ./
mv "./${MD5}" ./.car_running
./.car_running
rm ./.car_running
