<#
    .DESCRIPTION
    ===========================================================================
     Updated:       4/14/2020 10:26 AM
     Creator(s):    Chase Jones
     Organization:  JMF Technologies    
    ===========================================================================
    .NOTES
    This stops the "Server" service and clears all SMB shares. 
    After 120 seconds, it turns the "Server" service back on.
    This should be set as a Scheduled task 1 minute before Pfx Tax update is ran.
#>

# Stopping the "Server" service
Stop-Service -Name LanmanServer

# Closing all SMB sessions
Get-SmbSession | Close-SmbSession -Force

# Pausing for 120 seconds
Start-Sleep -Seconds 120

# Restarting the "Server" service
Start-Service -Name LanmanServer

Exit
