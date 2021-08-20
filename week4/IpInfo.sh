#!/bin/bash

# 4.5
# The “ifconfig” command displays information about a computer’s networking information.
# Three s commands exist to substitute text in the output into a format that is clear to read.
# The p command exists to print lines that have been processed by sed and the -n flag is used to not print lines that have not been processed.


      
#get info about networking from the ifconfig command 
      
net_info="$(ifconfig)" 
      
#parse out the ip address lines using sed 
      
addresses=$(echo "$net_info" | sed -n '/inet / { 
      
s/inet/IP Address:/ 
      
s/netmask/\n\t\tSubnet Mask:/ 
      
s/broadcast/\n\t\tBroadcast Address:/ 
      
p 
      
}') 
      
#format output 
      
echo -e "IP addresses on this computer are:\n$addresses" 
     