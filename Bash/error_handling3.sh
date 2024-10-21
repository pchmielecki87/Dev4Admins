# there us no try-catch in bash > https://stackoverflow.com/questions/22009364/is-there-a-try-catch-command-in-bash
#!/bin/bash

# Function to simulate "try"
try() {
    # Execute the command
    "$@"
    # Capture the exit status
    local status=$?
    
    # Check if the command was successful
    if [ $status -ne 0 ]; then
        # If there was an error, call the "catch" function
        catch "$status"
    fi
    
    return $status
}

# Function to simulate "catch"
catch() {
    local status=$1
    echo "Caught an error! Exit status: $status"
    # Perform any error handling here (e.g., cleanup, logging)
}

# Example commands
echo "Trying to create a directory..."
try mkdir my_directory

echo "Trying to change to the new directory..."
try cd my_directory

echo "Trying to create a file in the directory..."
try touch test_file.txt

echo "Trying to run an invalid command..."
try invalid_command  # This will trigger the catch function

echo "Script completed."
