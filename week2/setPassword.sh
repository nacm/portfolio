#!/bin/bash
#Get user to tye the name of the folder
read -p "Type the name of the folder you would like to create " folderName

#Check if the folder exists
if [ -d "$folderName" ]; then
    echo #newline
    echo "Folder already exist. Run the script again."
    echo #newline
    exit 1
fi

# Create the named folder in week2
mkdir $folderName

#Ask user to enter password
read -sp "Enter password " password

#save the hashed password in a file called scret.txt in the folder user specified -n no newline
echo -n $password | sha256sum >> "$folderName/secret.txt"

exit 0