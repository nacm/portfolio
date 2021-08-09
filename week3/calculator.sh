#!/bin/bash
#3.2 Calculator

#Take user inputs

echo "Enter Two numbers: "
read a
read b

#prompt to choose calculation option
PS3='Please Enter calculation option: '

#Valid options
options=(
    Addition
    Subtraction
    Multiplication
    Division
)
select  opt in "${options[@]}"
do  
    case $REPLY in
    1)
    #Addition
    ;;
    2)
    ##Subtraction
    ;;
    3)
    #Multiplication
    ;;
    4)
    #Division
    ;;
    esac
done
