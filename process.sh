#!/bin/bash
while :
do
    clear
    echo "Process Menu
1. Show all processes
2. Kill a process
3. Bring up top
4. Return to main Menu
5. Shut down
"
    read select2
    case $select2 in
    1)
        ps ax | less
        ;;
    2)
        echo "Enter process id"
        read input
        echo "Enter kill signal (1-64)"
        read input2
        kill -$input2 $input
        ps ax | grep $input
        sleep 5
        ;;
    3)
        top
        ;;
    4)
        exit
        ;;
    5)
        shutdown 0
        ;;
    esac
done
