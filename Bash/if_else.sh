#!/bin/bash

# Create a directory
if mkdir my_directory; then
    echo "Directory created successfully."
else
    echo "Failed to create directory."
    exit 1
fi

# Change to the directory
if cd my_directory; then
    echo "Changed to my_directory."
else
    echo "Failed to change directory."
    exit 1
fi
