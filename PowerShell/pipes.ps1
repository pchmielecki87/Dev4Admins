# Using pipes to filter and select properties
Get-Process | Where-Object { $_.CPU -gt 50 } | Select-Object Name, CPU
