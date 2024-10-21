#!/bin/bash

# Log file
log_file="log.txt"

# Function to log messages
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$log_file"
}

# Start logging
log "Script execution started."

# Step 1: Create a directory
mkdir my_directory
log "Created directory 'my_directory'."

# Step 2: Change to the new directory
cd my_directory
log "Changed to directory 'my_directory'."

# Step 3: Create a file in the new directory
echo "This is a test file." > test_file.txt
log "Created file 'test_file.txt' in 'my_directory'."

# Step 4: List contents of the directory
log "Listing contents of 'my_directory':"
ls >> "$log_file"
log "Listed contents of 'my_directory'."

# Step 5: Complete script
log "Script execution completed."
