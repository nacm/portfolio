#!/bin/bash 
#3.4 filename.sh
#File to read is the entered param 1
fileToRead=$1

#read through the lines on file specified in the 1st arguement
while read -r line
do 
    #check if line is a directory
    if [ -d "$line" ]; then
        echo "$line - That's a directory"
    #check if line is a valid file
    elif [ -f "$line" ]; then
        echo "$line - That file exist"
        #Check if line is uknown
    else
        echo "$line - I don't know what that is!"
    fi
done < "$fileToRead"