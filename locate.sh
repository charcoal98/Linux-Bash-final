#!/bin/bash
while :
do
    clear
    echo "User Menu
1. Find text within a file
2. Show information about a user account
3. List the contents of a directory
4. Bring up the man pages for a command
5. Bring up info pages for a command
6. Return to Main Menu
7. Shut down"
    read select2
    case $select2 in
    1)
        echo "Enter file location"
        read input
        echo "Enter search"
        read input2
        grep "$input2" $input | less
        ;;
    2)
        echo "Enter user name"
        read input
        groups $input
        cat /etc/passwd | grep "$input" | less
        ;;
    3)
        echo "Enter Directory location"
        read input
        ls -l $input | less
        ;;
    4)
        echo "Enter command"
        read input
        man $input
        ;;
    5) 
        echo "Enter command"
        read input
        info $input
        ;;
    6)
        exit
        ;;
    7)
        shutdown 0
        ;;
    esac
done
