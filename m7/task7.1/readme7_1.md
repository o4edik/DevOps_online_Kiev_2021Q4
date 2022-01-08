### Module 7. Linux administration.
#### Taks 7.1 Linux administration with bash.
##### Part A

A. Create a script that uses the following keys:

```
#!/bin/bash
#displays a list of open system TCP ports
for PORT in {20..1024}; do
	timeout 1 bash -c "</dev/tcp/192.168.1.137/$PORT &>/dev/null" 2>/dev/null
	[ $? -eq 0 ] && echo "port $PORT is open" 
done 
```
```
#!/bin/bash
echo "i'm" a $0
if"$#" then 
	echo  The --all key displays the IP addresses and symbolic names of all hosts in the current subnet
	echo  The --target key displays a list of open system TCP ports.
	exit 1
fi
```


##### Part B

B. Using Apache log example create a script to answer the following questions:

```
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
```

##### Part C

C. Create a data backup script that takes the following data as parameters:

```
#!/bin/bash
#What we'll backup
backpdir=/var/log
#Where we'll backup
storedir=~/bckp
# Compress the folder with foldername + date and take backup
filename="backup_`date +%d`_`date +%m`_`date +%Y`.tar"
mkdir ~/bckp && echo backup dir is created
sleep 2
# Create compressed file
tar -cvf /$storedir/$filename $backpdir

echo backup finished: $filename 
```

 - ading next string into the crontab file

```
1 * * * * sh ~/epam/DevOps_online_Kiev_2021Q4/m7/task7.1/c.sh
```
