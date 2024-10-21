# Parsing JSON data
$jsonData = '{
    "name": "Alice",
    "age": 30,
    "skills": ["PowerShell", "C#", "Azure"]
}'

$person = $jsonData | ConvertFrom-Json
Write-Host "Name: $($person.name), Age: $($person.age)"
