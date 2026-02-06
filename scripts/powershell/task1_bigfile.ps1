# Task 1: Check if file is over 1 MB

param (
    [string]$file
)

$limit = 1048576  # 1 MB

if (-not $file) {
    Write-Output "Usage: .\task1_bigfile.ps1 <filename>"
    exit
}

if (-not (Test-Path $file)) {
    Write-Output "File does not exist."
    exit
}

$size = (Get-Item $file).Length

if ($size -gt $limit) {
    Write-Output "Warning: File is too large"
} else {
    Write-Output "File size is within limits."
}
