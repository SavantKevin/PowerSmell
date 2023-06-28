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