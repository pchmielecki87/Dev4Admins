# Save the new JSON to a file (data_employees.json)
echo '{
  "employees": [
    {
      "name": "Alice",
      "age": 28
    },
    {
      "name": "Bob",
      "age": 35
    }
  ]
}' > data_employees.json

# List all employees
echo "Employees:"
jq -r '.employees[] | "\(.name) is \(.age) years old."' data_employees.json
