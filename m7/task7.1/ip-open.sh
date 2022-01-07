#!/bin/bash
#displays a list of open system TCP ports
for PORT in {20..1024}; do
	timeout 1 bash -c "</dev/tcp/192.168.1.137/$PORT &>/dev/null" 2>/dev/null
	[ $? -eq 0 ] && echo "port $PORT is open" 
done 
