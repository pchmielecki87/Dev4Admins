#!/bin/bash

# Declare indexed arrays to represent an object
attributes=("John" 30 "New York" "Developer")
keys=("name" "age" "city" "occupation")

# Function to list attributes of the object
list_attributes() {
  echo "Person attributes:"
  for i in "${!keys[@]}"; do
    echo "${keys[$i]}: ${attributes[$i]}"
  done
}

# Call the function to list attributes
list_attributes
