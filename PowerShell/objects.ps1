# Iterating over an array
$skills = @("PowerShell", "C#", "Azure")
foreach ($skill in $skills) {
    Write-Host "Skill: $skill"
}
