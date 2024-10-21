#!/bin/bash

# SHOW DYNAMICALLY ################################################################################

# Run a command and pipe the output to a file and also capture it for reuse
output=$(echo "Hello, World!" | tee output.txt)

# Reuse the output in the next command
echo "Reusing the output: $output"

# You can also use it in another command
echo "$output" | tr '[:lower:]' '[:upper:]'

# SAVE AS A FILE #################################################################################

# File to save output
output_file="output.txt"

# Save output to a new file
echo "This is the first line." > "$output_file"

# Append additional output to the file
echo "This line will be appended." >> "$output_file"
echo "This is another line." >> "$output_file"

# Display the content of the output file
echo "Content of $output_file:"
cat "$output_file"