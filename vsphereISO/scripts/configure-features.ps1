#Write-Host "Trying to install vmware tools..."
#e:\setup64 /s /v "/qb REBOOT=R"
#e:\setup64.exe /s /v "/qn /l*v ""%TEMP%\vmmsi.log"""

Write-Host "Activating required Windows features..."
Install-WindowsFeature -Name "Web-Server" -IncludeManagementTools
Install-WindowsFeature -Name "Web-Asp-Net45" -IncludeManagementTools
Install-WindowsFeature -Name "Web-AppInit" -IncludeManagementTools
Install-WindowsFeature -Name "Web-IP-Security" -IncludeManagementTools

