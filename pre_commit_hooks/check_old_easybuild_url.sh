#!/usr/bin/env bash

for i in "$@"; do

    grep "github.com/hpcugent/easybuild" $i &> /dev/null

    if [ $? -eq 0 ]
    then
        echo "found old url https://github.com/hpcugent/easybuild in $i"
        echo "Please replace it with the new url https://github.com/easybuilders"
        exit 1
    fi

done
