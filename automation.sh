#!/usr/bin/bash

git_auto() {
    if [ $# -ne 1 ]
    then
        echo "Usage: git_auto message"
        return 1
    fi

    git add -A
    git commit -m "$1"
    git push origin master
}

sfml_auto() {
    if [ $# -ne 1 ]
    then
        echo "Usage: sfml_auto output_name"
        return 1
    fi


    FILES="main.cpp"
    for i in $(find src -type f -name "*.cpp"); do
        FILES+=" "
        FILES+=$i
    done
    g++ $FILES -I include -o builds/$1 -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio -lsfml-network

}


alias cmaked="cmake -B builds && cd builds && make && cd .."