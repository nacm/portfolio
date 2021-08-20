#!/bin/bash

# Runs the Ipinfo.sh and prints the IP Address lines only
./IpInfo.sh | sed -n '/IP Address/p'