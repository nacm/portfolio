#!/bin/bash
#menu.sh

#clear the termical
clear

#run the passwordCheck.sh
./passwordCheck.sh

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
)
select opt in "${options[@]}"
do 
    case $REPLY in 
        1)
            ./foldermaker.sh #run folder maker
        ;;
        2)
            ./foldercopier.sh #run folder copier
        ;;
        3) 
            ./setPassword.sh #run set password
    esac
done
