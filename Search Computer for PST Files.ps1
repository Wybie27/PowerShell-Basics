## Brissotech
## Script provided as is. Use at own risk. No guarantees or warranty provided.

## Source - https://github.com/Brisso/PowerShell-Basics

## Description
## Script designed search your computer for .PST files and export to a CSV.

$outputfilepath = "C:\Located-PST.csv"
$searchpath = "C:\"
Get-ChildItem -Force $searchpath -include *.pst -Recurse | Where-Object { ($_.PSIsContainer -eq $false) } | Select-Object Name,Directory,Length | Export-Csv $outputfilepath -NoTypeInformation
