#!/bin/bash

#Script to iterate through list of IP's in a file with default NetGear creds

#Original:
#while read line; do
#   test=$(curl -u admin:password $line/index.htm | grep -i netgear)
#       if [[ $test == *"NETGEAR"* ]]; then
#           echo $line >> Netgear_Default_Auth.txt
#       fi
#done < $1
# Hello71 on IRC bash line:
while read line; do if curl -u admin:password $line/index.htm | grep -qi netgear; then echo $line >> Netgear_Default_Auth.txt; fi; done < $1
