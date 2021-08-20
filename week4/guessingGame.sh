#!/bin/bash

#4.3

#Ask to neter a number between 1 and 100.
#read -p "Enter a number between 1 and 100:" userGuess

#getNumber() 
getNumber()
{ 
    read -p "$1: " 
    while (( $REPLY != 42 )); do 
        #Check if entered value is between 1 and 100.
        if (( $REPLY < 1 ||  $REPLY > 100 )); then
                echo -e "\033[31mERROR:\033[0m Input must be between 1 and 100"    
        elif (( $REPLY < 42 )); then
            echo "Too low!"
            else 
                 echo "Too high!"
        fi 
        read -p "$1: " 
    done 
    #when user enters corret number -42
    echo "Right!"
} 

#Call the function getNumber()
getNumber "Enter a number between 1 and 100: " 