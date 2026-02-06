# Task 2: Top Memory Hogs - PowerShell Version

Get-Process |
Sort-Object -Property WorkingSet -Descending |
Select-Object -First 5 -Property Name, Id, @{Name="MemoryMB";Expression={[math]::round($_.WorkingSet / 1MB, 2)}} |
Format-Table -AutoSize
