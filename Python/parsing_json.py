#!/usr/bin/env python3

import json

# Path to the JSON file
json_file_path = 'data.json'

# Read and parse the JSON file
with open(json_file_path, 'r') as json_file:
    data = json.load(json_file)

# Display parsed data
print("Parsed JSON Data:\n")

# Iterate through the people list and print their details
for person in data['people']:
    print(f"Name: {person['name']}")
    print(f"Age: {person['age']}")
    print(f"Skills: {', '.join(person['skills'])}")
    print()
