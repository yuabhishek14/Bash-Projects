#-exec rm {} \;: Executes the rm command on each file found. {} represents the filename, and \; terminates the -exec command.

find /path/to/folder -size 100M+ -mtime 90+ -exec rm {} \;