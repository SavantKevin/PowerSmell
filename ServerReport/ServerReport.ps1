# retrieve system name
$Name = $env:COMPUTERNAME

# operating system version
$Version = (Get-ComputerInfo | select-object OsVersion).OsVersion

# logical disk count
$DiskCount = (Get-CimInstance CIM_LogicalDisk).count

# some bad examples of output
# write-host is not good to use
Write-Host "Server Name: $name"

# some good examples of output
Write-Output "Computer name: $name"
Write-Output "Computer Version: $version"
Write-Output "Computer logical disk count: $diskcount"

# make our own custom object
[PSCustomObject]@{
    name = value
}





