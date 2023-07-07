# retrieve system info
$Name = $env:COMPUTERNAME
$Version = (Get-ComputerInfo | select-object OsVersion).OsVersion
$DiskCount = (Get-CimInstance CIM_LogicalDisk).count
$FreeSpace = (Get-CimInstance CIM_LogicalDisk).FreeSpace

# make our own custom object
$obj = [PSCustomObject]@{
    ComputerName = $Name
    OsVersion = $Version
    DiskCount = $DiskCount
    'GB Free' = $FreeSpace
}

# show output
Write-Output $obj

# find the number of temporary files on the C drive and subdirectories
$rootPath = "C:\"
$tempFilePattern = "*.tmp"
$files = Get-ChildItem -Path $rootPath -Filter $tempFilePattern -File -Recurse
$fileCount = $files.Count
Write-Output "Number of temporary files found: $fileCount"