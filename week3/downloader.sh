#!/bin/bash
# prompt the user to type a website URL to download or type “exit” to quit.”
# prompt the user to type a download location
# use wget to download the webpage requested by the user
# repeat the process until the user types “exit”.

#prompt to enter url
while read -p "Please enter the website URL to download or type 'exit' to quit: " url
do
    #Check if quit or url
    if [ "$url" == "exit" ]; then
        #quit
        break
    else
        #get url
        wget "$url"
    fi
done
