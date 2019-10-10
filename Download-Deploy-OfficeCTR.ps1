<#	
	.NOTES
	===========================================================================================================
  Created      :  Oct 10, 2019
  Updated      :  Oct 10, 2019
  Filename     :  Download-Deploy-OfficeCTR.ps1
  Autor        :  TheChaseJ (https://github.com/TheChaseJ)
  Repository   :  https://github.com/TheChaseJ/Individual-PS-Scripts
	===========================================================================================================
  .DESCRIPTION
	Downloads and Deploys "Click-to-run" Office suites. Place the Office configuration.xml in C:\ODT 
  and run this with PowerSehll from any location. ***This script will "Self-Elevate" so no UAC prompts 
  will be presented after the initial prompt.
#>

#This will self elevate the script so with a UAC prompt since this script needs to be run as an Administrator in order to function properly.
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
    Start-Sleep 3
    Start-Process powershell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
    Exit
}

#Set Error Action to Silently Continue
$ErrorActionPreference = "SilentlyContinue"

#Set location of configuration.xml file
set-location "C:\ODT\"

#Downloading software
.\setup.exe /download configuration.xml

#Installing software
.\setup.exe /configure configuration.xml
