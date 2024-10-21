# Path to the JSON file
$jsonFilePath = "data.json"

# Check if the file exists
if (-Not (Test-Path $jsonFilePath)) {
    Write-Host "The file $jsonFilePath does not exist."
    exit
}

# Read and parse the JSON file
$jsonContent = Get-Content -Path $jsonFilePath -Raw
$jsonData = $jsonContent | ConvertFrom-Json

# Display parsed data
Write-Host "Parsed JSON Data:`n"

# Iterate through each person and display their information
foreach ($person in $jsonData.people) {
    Write-Host "Name: $($person.name)"
    Write-Host "Age: $($person.age)"
    Write-Host "Skills: $($person.skills -join ', ')`n"
}
