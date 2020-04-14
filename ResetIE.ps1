Get-Process iexplore |kill -Force
rundll32.exe inetcpl.cpl ResetIEtoDefaults
Start-Sleep -Seconds 2
[System.Windows.Forms.SendKeys]::SendWait("R")
Start-Sleep -Seconds 2
[System.Windows.Forms.SendKeys]::SendWait("C")
