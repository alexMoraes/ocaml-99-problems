#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Please provide executable name"
    exit 1
fi

lastFile=$(ls ./bin | sort -V | tail -n 1)
version=${lastFile:0:2}
nextVersion=$((10#$version + 1))
printf -v nextVersion "%02d" $nextVersion

echo "dune init exec $1 ${nextVersion}_$1 --public --libs exercises"
dune init exec $1 ./bin/${nextVersion}_$1 --public --libs exercises