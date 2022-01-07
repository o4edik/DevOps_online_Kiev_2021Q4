#!/bin/bash
# Using --all and --target keys.
echo; echo "Hit --all or --target and hit return."
read alltarget
case "$alltarget" in
	"--all" ) arp -a ;;
	"--target" ) for PORT in {20..1024}; do
        timeout 1 bash -c "</dev/tcp/192.168.1.1/$PORT &>/dev/null" 2>/dev/null
        [ $? -eq 0 ] && echo "port $PORT is open" 
done 
;;

esac

