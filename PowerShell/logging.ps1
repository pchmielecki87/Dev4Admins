# Simple logging function
function Log-Message {
    param (
        [string]$Message
    )
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    "$timestamp - $Message" | Out-File -FilePath "log.txt" -Append
}

# Logging messages
Log-Message "Script started."
Log-Message "Performing some actions..."
