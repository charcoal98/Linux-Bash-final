#!/bin/bash
while :; do
    clear
    echo "File Menu
1. Create a file
2. Delete a file
3. Create a directory
4. Delete a directory
5. Create a symbolic link
6. Change ownership of a file
7. Change permissions on a file
8. Copy a file
9. Move a file
10. Modify text within a file
11. Compress a file
12. Decompress a file
13. Return to main menu
14. Shut down
"
    read select2
    case $select2 in
    1)
        echo "Enter file name"
        read input
        touch $input
        ls -la
        sleep 5
        ;;
    2)
        echo "Enter file name"
        read input
        rm $input
        ls -la
        sleep 5
        ;;
    3)
        echo "Enter Directory name"
        read input
        mkdir $input
        ls -la
        sleep 5
        ;;
    4)
        echo "Enter Directory name"
        read input
        rm -r $input
        ls -la
        sleep 5
        ;;
    5)
        echo "Enter file location"
        read file1
        echo "Enter new link location"
        read file2
        ln -s $file1 $file2
        ls -la
        sleep 5
        ;;
    6)
        echo "Enter file name"
        read input
        echo "Enter new owner"
        read owner
        chown -R $owner $input
        ls -la
        sleep 5
        ;;

    7)
        echo "Enter file name"
        read input
        echo "Enter new permisions"
        read perm
        chmod -R $perm $input
        ls -la
        sleep 5
        ;;
    8)
        echo "Enter file location"
        read file1
        echo "Enter new file location and name (/dir/name)"
        read file2
        mv $file1 $file2
        ls -la
        sleep 5
        ;;
    9)
        echo "Enter file location"
        read file1
        echo "Enter new file location"
        read file2
        mv $file1 $file2
        ls -la
        sleep 5
        ;;
    10)
        echo "Enter file Name"
        read input
        vi $input
        ls -la
        sleep 5
        ;;
    11)
        echo "Enter file Name"
        read input
        while :; do
            echo "Chose a compression algorithem
        1) compress
        2) GNU zip
        3) zip
        4) xz
        5) bzip2"
            read select3
            case $select3 in
            1)
                compress -v $input
                break
                ;;
            2)
                gzip -v $input $input.gz
                break
                ;;
            3)
                zip -v $input.zip $input
                break
                ;;
            4)
                xz -v -9 $input $input.xz
                break
                ;;
            5)
                bzip2 -v $input
                break
                ;;

            *)
                Echo "Invalid selection"
                ;;
            esac
        done
        ls -la
        sleep 5
        ;;
    12)
        echo "Enter file Name"
        read input
        while :; do
            echo "Chose a compression algorithem
        1) uncompress
        2) GNU zip -d
        3) unzip
        4) unxz
        5) bunzip2"
            read select3
            case $select3 in
            1)
                uncompress $input
                break
                ;;
            2)
                gzip -d $input $input.gz
                break
                ;;
            3)
                unzip $input.zip $input
                break
                ;;
            4)
                unxz -9 $input $input.xz
                break
                ;;
            5)
                bunzip2 $input
                break
                ;;

            *)
                Echo "Invalid selection"
                ;;
            esac
        done
        ls -la
        sleep 5
        ;;
    13)
        exit
        ;;
    14)
        shutdown 0
        ;;
    esac
done
