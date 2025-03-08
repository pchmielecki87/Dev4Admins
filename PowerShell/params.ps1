# ./params.ps1 -Name "Alice" -Age 30 -Skills "Python","Java"
# ./params.ps1 "Alice" 30 "Python","Java"
#TODO add mandatory params

#!/usr/bin/env pwsh
# Default parameters
param (
    [string]$Name = "Default Name",
    [int]$Age = 25,
    [string[]]$Skills = @("PowerShell", "C#", "Azure")
)

# Function to display person information
function Show-PersonInfo {
    param (
        [string]$Name,
        [int]$Age,
        [string[]]$Skills
    )
    
    Write-Host "Name: $Name"
    Write-Host "Age: $Age"
    Write-Host "Skills: $($Skills -join ', ')"
}

# Display initial parameters
Write-Host "Initial Parameters:"
Show-PersonInfo -Name $Name -Age $Age -Skills $Skills

# Check if parameters are provided on script execution
if ($PSCmdlet.MyInvocation.BoundParameters.Count -gt 0) {
    # Display updated parameters from script execution
    Write-Host "`nUpdated Parameters from script execution:"
    Show-PersonInfo -Name $Name -Age $Age -Skills $Skills
} else {
    # Prompt to overwrite parameters dynamically if no parameters were passed
    Write-Host "`nNo parameters provided. Do you want to overwrite the parameters? (y/n)"
    $overwrite = Read-Host

    if ($overwrite -eq 'y') {
        $Name = Read-Host "Enter new Name (current: $Name)"
        $Age = Read-Host "Enter new Age (current: $Age)"
        $SkillsInput = Read-Host "Enter new Skills (comma-separated, current: $($Skills -join ', '))"

        # Convert comma-separated input into an array
        if ($SkillsInput) {
            $Skills = $SkillsInput -split ',\s*'
        }
    }
}

# Display final parameters
Write-Host "`nFinal Parameters:"
Show-PersonInfo -Name $Name -Age $Age -Skills $Skills
