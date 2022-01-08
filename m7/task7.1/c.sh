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

