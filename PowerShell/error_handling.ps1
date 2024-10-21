# Example of Try-Catch
try {
    # This will cause an error if the file doesn't exist
    Get-Content "nonexistentfile.txt"
} catch {
    Write-Host "An error occurred: $_"
    Log-Message "An error occurred: $_"
}
