Write-Host "=============================="
Write-Host "      SYSTEM HEALTH REPORT    "
Write-Host "=============================="

$datetime = Get-Date
$hostname = $env:COMPUTERNAME
$user = $env:USERNAME

$disk = Get-PSDrive C
$total = [math]::Round($disk.Used + $disk.Free,2)
$free = [math]::Round($disk.Free,2)

Write-Host "Date & Time: $datetime"
Write-Host "Hostname: $hostname"
Write-Host "User: $user"
Write-Host "Disk Usage (C:): $free GB free of $total GB"
Write-Host "=============================="
