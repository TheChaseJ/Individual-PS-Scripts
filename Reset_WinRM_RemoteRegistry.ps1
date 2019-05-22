#Enable and start Windows Remote Management (WS-Management)
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\WinRM" -Name Start -Type Dword -Value 2
Start-Service WinRM

# Enable and start Remote Registry
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry" -Name ImagePath -Type String -Value "%SystemRoot%\system32\svchost.exe -k localService -p"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry" -Name DisplayName -Type String -Value "Remote Registry"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry" -Name ObjectName -Type String -Value "NT AUTHORITY\LocalService"
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry" -Name Start -Type Dword -Value 2
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry" -Name Type -Type Dword -Value 32
Start-Service RemoteRegistry
