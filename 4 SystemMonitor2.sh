#!/bin/bash

# Set the threshold for CPU usage
threshold=60

# Specify the email address for notification
email_address="your.email@example.com"

# Specify the log file path
log_file="/path/to/process_monitor.log"

while true; do
    # Get the list of processes and their CPU usage
    processes=$(ps aux --sort=-%cpu | awk -v threshold="$threshold" '$3 > threshold {print $0}')

    # Check if any process exceeds the threshold
    if [ -n "$processes" ]; then
        # Log the information into a file
        echo -e "\nProcesses with CPU usage exceeding $threshold% at $(date):\n$processes\n" >> "$log_file"

        # Send email notification
        echo -e "Subject: High CPU Usage Alert\n\nProcesses with CPU usage exceeding $threshold%:\n$processes" | mail -s "High CPU Usage Alert" "$email_address"
    fi

    # Adjust the sleep time according to your monitoring frequency (in seconds)
    sleep 300  # 5 minutes
done
