<#	
	.NOTES
	===========================================================================================================
  Created      :  Oct 10, 2019
  Updated      :  Oct 10, 2019
  Filename     :  Download-Deploy-OfficeCTR.ps1
  Autor        :  TheChaseJ (https://github.com/TheChaseJ)
  Repository   :  https://github.com/TheChaseJ/Download-Deploy-OfficeCTR.ps1
	===========================================================================================================
  .DESCRIPTION
	Downloads and Deploys "Click-to-run" Office suites. Place the Office configuration.xml in C:\ODT 
  and run this with PowerSehll from any location. ***This script will "Self-Elevate" so no UAC prompts 
  will be presented after the initial prompt.
#>

#Set Error Action to Silently Continue
$ErrorActionPreference = "SilentlyContinue"
set-location "C:\ODT\"
.\setup.exe /download configuration.xml
.\setup.exe /configure configuration.xml
