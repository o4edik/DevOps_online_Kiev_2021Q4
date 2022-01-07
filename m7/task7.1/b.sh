#!/bin/bash
log=apache_logs.txt
echo From which ip were the most requests?
awk '{print $1}' $log |sort|uniq -c|sort -nr|head -n 1
sleep 1
echo  What is the most requested page?
awk '{print $7 }' $log | sort |uniq -c| sort -nr|head -n 1
sleep 1
echo How many requests were there from each ip?
awk '{print "ip:" $1}' $log |sort|uniq -c|sort -nr|head -n 10
sleep 1
echo What non-existent pages were clients referred to?
cat $log | grep 'error404' |\awk '{print $7,$11 }'|sort|uniq -c|sort -nr
sleep 1
echo What time did site get the most requests?
awk -F: '{print "time:" $2":00"}' $log |sort -n|uniq -c|sort -nr| head -1
sleep 1
echo "What search bots have accessed the site? (UA + IP)"
cat $log | grep 'robots*' -v |\awk '{print $1 "\t " $12 }'|sort|uniq -c|sort -nr
