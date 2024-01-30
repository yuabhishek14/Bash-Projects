#!/bin/bash

#Create new directory if not exist
mkdir -p /home/ubuntu/shell/Users_Login_Data

#Get Date in a variable
DATE=`date +'%m-%d-%Y-%H-%M'`

#Log the Users Data in a file
who | awk '{print $1 $3 $4 %5}' > /home/ubuntu/shell/Users_Login_Data/Users_$DATE.txt


#Now setup a crontab to run every miniute 
#  crontab -e
#  * * * * * /home/ubuntu/shell/TrackUserLogin.sh