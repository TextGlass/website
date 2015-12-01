#!/bin/bash

JAR=textglass-reference.jar

if [ -d bin ]
then
    JAR=bin
elif [ ! -f "$JAR" ]
then
    echo "Please run compile.sh"
    exit 1
fi

LIBS=`find lib -type f | xargs echo | sed "s/ /:/g"`

java -cp "$JAR:$LIBS" Main "$@"
