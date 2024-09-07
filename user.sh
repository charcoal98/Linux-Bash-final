#!/bin/bash
#incomplete
while :; do
    clear
    echo "User Menu
1. Create a user
2. Change the group for a user
3. Create a group
4. Delete a user
5. Change a password
6. Return to Main Menu
7. Shut down
"
    read select2
    case $select2 in
    1)
        echo "Enter user name"
        read input
        useradd $input
        cat /etc/passwd | grep $input
        sleep 5
        ;;
    2)
        echo "Enter user name"
        read input
        echo "Enter group"
        read input2
        usermod -g $input2 $input
        groups $input
        sleep 5
        ;;
    3)
        echo "Enter Group name"
        read input
        groupadd $input
        cat /etc/group | grep $input
        sleep 5
        ;;
    4)
        echo "Enter User name"
        read input
        userdel $input
        cat /etc/passwd | grep $input
        ;;
    5)
        echo "Enter User name"
        read input
        passwd $input
        sudo cat /etc/shadow  | grep $input
        sleep 5
        ;;
    6)
        exit
        ;;
    7)
        shutdown 0
        ;;
    esac
done
