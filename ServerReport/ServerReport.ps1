# retrieve system name
$Name = $env:COMPUTERNAME

# operating system version
$Version = (Get-ComputerInfo | select-object OsVersion).OsVersion

