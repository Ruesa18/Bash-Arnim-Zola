#!/bin/sh
myrows=$(tput cols)
maxRuns=5

zolaOne() {
    clear

    if [ "$myrows" -lt 200 ]
    then
        cat sizes/arnim-zola-ansi-100_0.txt
    elif [ "$myrows" -ge 200 ] && [ "$myrows" -lt 300 ]
    then
        cat sizes/arnim-zola-ansi-200_0.txt
    elif [ "$myrows" -ge 300 ]
    then
        cat sizes/arnim-zola-ansi-300_0.txt
    fi
}

zolaTwo() {
    clear

    if [ "$myrows" -lt 200 ]
    then
        cat sizes/arnim-zola-ansi-100_1.txt
    elif [ "$myrows" -ge 200 ] && [ "$myrows" -lt 300 ]
    then
        cat sizes/arnim-zola-ansi-200_1.txt
    elif [ "$myrows" -ge 300 ]
    then
        cat sizes/arnim-zola-ansi-300_1.txt
    fi
}

zolaThree() {
    clear

    if [ "$myrows" -lt 200 ]
    then
        cat sizes/arnim-zola-ansi-100_2.txt
    elif [ "$myrows" -ge 200 ] && [ "$myrows" -lt 300 ]
    then
        cat sizes/arnim-zola-ansi-200_2.txt
    elif [ "$myrows" -ge 300 ]
    then
        cat sizes/arnim-zola-ansi-300_2.txt
    fi
}

ProjectInsight() {
    counter="0"

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
