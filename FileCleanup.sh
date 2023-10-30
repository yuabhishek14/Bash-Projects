#!/bin/bash

find /home/ubuntu/shell/Users_Login_Data/*.txt -type f -cmin +60
find /home/ubuntu/shell/Users_Login_Data/*.txt -type f -cmin +60 -delete

#Now setup a crontab to run every miniute 
#  crontab -e
#  * * * * * /home/ubuntu/shell/FileCleanup.sh