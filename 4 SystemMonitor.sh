#!/bin/bash

# File to store information about processes exceeding 60% CPU usage
output_file="process_monitor.log"
# Email address to receive notifications
email_address="your_email@example.com"

while true; do
 # Get the list of processes sorted by CPU usage in descending order
 processes=$(ps aux --sort=-%cpu | awk '{if ($3 > 60) print}')

 # Check if there are any processes exceeding 60% CPU usage
 if [ -n "$processes" ]; then
 # Get the current date and time
 current_datetime=$(date +"%Y-%m-%d %H:%M:%S")

 # Write information about the processes to the output file
 echo "Processes exceeding 60% CPU usage at $current_datetime:" >> "$output_file"
 echo "$processes" >> "$output_file"
 echo "----------------------------------------" >> "$output_file"

 # Send an email notification
 echo -e "Subject: High CPU Usage Alert\n\nProcesses exceeding 60% CPU usage:\n\n$processes" | mail -s "High CPU Usage Alert" "$email_address"
 fi

 # Sleep for 1 minute before checking again
 sleep 60
done