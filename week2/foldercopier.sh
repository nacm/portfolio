#!/bin/bash

read -p "Type the name of the folder you would likse to copy: " folderName

#if the name is a valid directory

if [ -d "$folderName" ]; then
    #copy it to new a location
    read -p "type the name of the destination folder: " newFolderName
    cp -r "$folderName" "$newFolderName"

else
    #otherwisse, print an error
    echo "I couldn't find that folder"

fi