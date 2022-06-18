#!/usr/bin/bash

nav() {
    if [ $# -eq 0 ]
    then
        nav_help
        return 1
    fi

    case $1 in

    p)
        cd ~/projects
        ;;
    pc)
        cd ~/projects/c++
        ;;
    pr)
        cd ~/projects/rust
        ;;
    pp)
        cd ~projects/python
        ;;
    pw)
        cd ~projects/web
        ;;
    bct)
        cd ~/BCT
        ;;
    *)
        nav_help
        ;;
    esac
}

nav_help() {
    echo "Usage: nav [options]"

    echo "Options: "
    echo "    - p   :  opens project directory"
    echo "    - pc  :  open c++ projects directory"
    echo "    - pr  :  opens rust projects directory"
    echo "    - pp  :  opens python projects directory"
    echo "    - pw  :  opens web project directory"
    echo "    - bct :  opens BCT directory"
}