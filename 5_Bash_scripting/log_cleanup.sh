
#!/bin/bash

# Directory containing log files

log_dir="/var/log"

# Number of days to keep log files

days=30

# Find and delete log files older than specified days

echo "Cleaning up log files older than $days days in $log_dir..."
find "$log_dir" -type f -name "*.log" -mtime +$days -exec rm -f {} \;

echo "Log file cleanup complete."
