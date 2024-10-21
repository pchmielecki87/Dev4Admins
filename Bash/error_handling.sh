#!/bin/bash

# Check if a command succeeded
mkdir new_dir
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory 'new_dir'."
    exit 1
fi
