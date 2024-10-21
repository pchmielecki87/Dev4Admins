# istall jq

# Save the JSON to a file (data.json)
echo '{
  "person": {
    "name": "John",
    "age": 30,
    "city": "New York"
  },
  "isEmployee": true,
  "skills": ["Java", "Python", "JavaScript"]
}' > data.json

# Extracting the name and age
name=$(jq -r '.person.name' data.json)
age=$(jq -r '.person.age' data.json)

echo "Name: $name"
echo "Age: $age"

########################################################

echo "Skills:"
jq -r '.skills[]' data.json | while read -r skill; do
  echo "- $skill"
done