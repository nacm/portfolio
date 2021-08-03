#!/bin/bash



#hardcode the secretFolder to look for the password file
secretFolder=./password/

#Check if secretFolder exists, if not exit
if [ ! -d "$secretFolder" ]; then
    echo "Sorry secret folder missing. Create a folder named 'password' and set password using setPassword.sh.."
    exit 2
fi

#Check if secret.txt file is in folder password, if not exit
if [ ! -f "$secretFolder/secret.txt" ]; then
    echo "$secretFolder does not contain the password file. set password using setPassword.sh.."
    exit 2
fi

#Ast to Enter Password
read -sp "Enter password: " userPassword

#Create hash for the enteredPassword $hashedPassword
hashedPassword=$(echo -n $userPassword | sha256sum)

#Get the stored password in secret.txt
storedPassword=$(cat $secretFolder/secret.txt)

#check if entered password is same as in secret.txt
if [ "$hashedPassword" = "$storedPassword" ]; then
    # Success Message
    echo "Access Granted"
    exit 0
else
    # Deny Message
    echo "Access Denied"
    exit 1

fi

