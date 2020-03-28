# Handy PowerShell Scripts for Activity Log Operations

# Get-AzLog

# Get log entries created after a particular date time
Get-AzLog -StartTime 2016-03-01T10:30

# Get log entries between a date time range
Get-AzLog -StartTime 2015-01-01T10:30 -EndTime 2015-01-01T11:30

# Get log entries from a specific resource group
Get-AzLog -ResourceGroup 'myrg1'

# Get log entries from a specific resource provider between a date time range
Get-AzLog -ResourceProvider 'Microsoft.Web' -StartTime 2015-01-01T10:30 -EndTime 2015-01-01T11:30

# Get log entries with a specific caller (Whodunnit)
Get-AzLog -Caller 'myname@company.com'

# Get the last 1000 events
Get-AzLog -MaxEvents 1000





