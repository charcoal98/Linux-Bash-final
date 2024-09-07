#!/bin/bash
while :; do
    clear
    echo "Process Menu
1. Search the entire system for a file
2. Free VBucks
3. Return to main Menu
4. Shut down
"
    read select2
    case $select2 in
    1)
        echo "Enter File name"
        read input
        find / -name $input
        echo "Press Enter to Continue"
        read
        ;;
    2)
        color=91
        max=951
        jank="m"
        while read -r line; do
            echo -e "\e[$color$jank$line"
            sleep 1
            if [ $color -eq 95 ]; then
                color=91
            else
                color=$(($color + 1))
            fi
        done <./lib/free_vbucks_hack_REAL.sh
        echo -e "\e[39m"
        ;;
    3)
        exit
        ;;
    4)
        shutdown -h now
        ;;
    esac
done
