#!/bin/bash
while :; do
    #clear
    echo -e "\e[91mThis script must be run as root or with SUDO"
echo -e "\e[93mEnsure that you have ncompress and bzip2 installed before testing"
echo -e "\e[39m"
echo "     Main Menu
1. File operations
2. User Operations
3. Locating information
4. Fun Stuff
5. Process menu
6. Exit
7. Shut down
"
    read select1

    case $select1 in
    1)
        ./file.sh
        ;;
    2)
        ./user.sh
        ;;
    3)
        ./locate.sh
        ;;
    4)
        ./fun.sh
        ;;
    5)
        ./process.sh
        ;;
    6)
        exit
        ;;
    7)
        shutdown 0
        ;;
    *)
        Echo "Invalid Option"
        ;;
    esac
done
