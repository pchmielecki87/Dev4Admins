# python3 params.py --name "John" --age 21 --skills Python Pip Linux K8S
#!/usr/bin/env python3

import argparse

# Function to display the parameters
def show_person_info(name, age, skills):
    print(f"Name: {name}")
    print(f"Age: {age}")
    print(f"Skills: {', '.join(skills)}")

# Default values for parameters
DEFAULT_NAME = "Alice"
DEFAULT_AGE = 25
DEFAULT_SKILLS = ["Python", "Bash", "Docker"]

# Argument parsing
parser = argparse.ArgumentParser(description="Script with default and overwriteable parameters.")
parser.add_argument('--name', type=str, default=DEFAULT_NAME, help='Name of the person')
parser.add_argument('--age', type=int, default=DEFAULT_AGE, help='Age of the person')
parser.add_argument('--skills', type=str, nargs='+', default=DEFAULT_SKILLS, help='Skills of the person')

# Parse the command-line arguments
args = parser.parse_args()

# Show the final parameters
print("Final Parameters:")
show_person_info(args.name, args.age, args.skills)
