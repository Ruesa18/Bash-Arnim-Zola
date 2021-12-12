#!/bin/sh
# Author: Sandro Rüfenacht
# Date: 07.10.2021

myrows=$(tput cols)
maxRuns=5

zolaOne() {
    if [ "$myrows" -lt 200 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-100_0.txt
    elif [ "$myrows" -ge 200 ] && [ "$myrows" -lt 300 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-200_0.txt
    elif [ "$myrows" -ge 300 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-300_0.txt
    fi
}

zolaTwo() {
    if [ "$myrows" -lt 200 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-100_1.txt
    elif [ "$myrows" -ge 200 ] && [ "$myrows" -lt 300 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-200_1.txt
    elif [ "$myrows" -ge 300 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-300_1.txt
    fi
}

zolaThree() {
    if [ "$myrows" -lt 200 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-100_2.txt
    elif [ "$myrows" -ge 200 ] && [ "$myrows" -lt 300 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-200_2.txt
    elif [ "$myrows" -ge 300 ]
    then
        cat /bin/arnim-files/frames/arnim-zola-ansi-300_2.txt
    fi
}

ProjectInsight() {
    counter="0"
    clear

    while [ "$counter" -lt "$maxRuns" ]
    do
        zolaOne
        tput cup 0 0
        sleep 0.5

        zolaTwo
        tput cup 0 0
        sleep 0.5

        zolaThree
        tput cup 0 0
        sleep 0.5

        counter=$(($counter+1))
    done
    clear
}

ProjectInsight
