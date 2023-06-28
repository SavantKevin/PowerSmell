# retrieve system info
$Name = $env:COMPUTERNAME
$Version = (Get-ComputerInfo | select-object OsVersion).OsVersion
$DiskCount = (Get-CimInstance CIM_LogicalDisk).count

# make our own custom object
$obj = [PSCustomObject]@{
    ComputerName = $Name
    OsVersion = $Version
    DiskCount = $DiskCount
}

# show output
Write-Output $obj









