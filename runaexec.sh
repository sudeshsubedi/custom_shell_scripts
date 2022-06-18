#!/usr/bin/bash

loop() {
    if [ $# -eq 0 ]
    then
        echo Usage: loop executable_name
        return 1
    fi
    pwd=$(pwd)
    while :
    do
        pwd=$(pwd)
        $pwd/$1
    done
}