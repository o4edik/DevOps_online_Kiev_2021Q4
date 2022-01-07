#!/bin/bash
echo "i'm" a $0
if"$#" then 
	echo  The --all key displays the IP addresses and symbolic names of all hosts in the current subnet
	echo  The --target key displays a list of open system TCP ports.
	exit 1
fi
