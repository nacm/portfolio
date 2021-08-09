!#/bin/bash
#Get user to tye the name of the folder
read -p "Type the name of the folder you wold like to create " folderName

# Create the named folder in week2
mkdir $folderName

#Ask user to enter password
read -sp "Enter password " password

#save the hashed password in a file called scret.txt in the folder user specified
echo $password | sha256sum >> "$folderName/secret.txt"

exit 0