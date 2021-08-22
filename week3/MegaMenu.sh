#!/bin/bash
#menu.sh

#clear the terminal
clear

#Add Paths to look for older folders
export PATH=$PATH:../week1:../week2:../week3
#run the passwordCheck.sh
../week2/passwordCheck.sh

#get the last exit code to see access result

if [ $? != 0 ]; then
    echo "Goodbye"
    exit 1
fi

#prompt to enter choice PS3-
PS3='Please enter your choice: '
#Listed options
options=(
    "Create a folder"
    "Copy a folder"
    "Set a password"
    "Calculator"
    "Create Week Folders"
    "Check Filenames"
    "Download a file"
)
select opt in "${options[@]}"
do 
    case $REPLY in 
        1)
            ../week2/foldermaker.sh #run folder maker
        ;;
        2)
            ../week2/foldercopier.sh #run folder copier
        ;;
        3) 
            ../week2/setPassword.sh #run set password
        ;;
        4)
            ./calculator.sh
        ;;
        5)
            ./foldermaker.sh
        ;;
        6)
            ./filenames.sh
        7)
            ./downloader.sh
        ;;
    esac
done
