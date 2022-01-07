#!/bin/bash
log=apache_logs.txt
echo From which ip were the most requests?
awk '{print $1}' $log |sort|uniq -c|sort -nr|head -n 1

