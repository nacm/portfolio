#!/bin/bash
#3.2 Calculator
#color codes all operations
_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RED=$(tput setaf 1)
_PURPLE=$(tput setaf 5)
_RESET=$(tput sgr0)
_BOLD=$(tput bold)

#Take user inputs

echo "Enter Two numbers: "
read a
read b

#prompt to choose calculation option
PS3='Please Enter calculation option: '

#Valid options
options=(
    ${_BLUE}Addition${_RESET}
    ${_GREEN}Subtraction${_RESET}
    ${_RED}Multiplication${_RESET}
    ${_PURPLE}Division${_RESET}
)
select  opt in "${options[@]}"
do  
    case $REPLY in
    1)
    #Addition
    res=`echo $a + $b | bc`
    ;;
    2)
    ##Subtraction
    res=`echo $a - $b | bc`
    ;;
    3)
    #Multiplication
    res=`echo $a \* $b | bc`
    ;;
    4)
    #Division with 2 decimals
    res=`echo "scale=2; $a / $b" | bc`
    ;;

    esac
    #Display Answer
    echo "Result: ${_BOLD}$res${_RESET}"

     # exit by entering q
    echo "Press 'Q' to exit or any key to continue"
    #Check what user enters next
    read nextstep
    if [ "$nextstep" = "q" ] || [ "$nextstep" = "Q" ]; then
        break
    fi

done