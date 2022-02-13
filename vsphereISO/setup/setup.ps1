#$ErrorActionPreference = "Stop"
#$ErrorActionPreference = "Inquire"
$ErrorActionPreference = "Break"

Start-Sleep -s 120
#Adding static IP -manjesh
#New-NetIPAddress –InterfaceAlias “Ethernet0” –IPv4Address “10.4.198.43” –PrefixLength 24 -DefaultGateway 10.4.198.1
New-NetIPAddress –IPAddress 10.4.198.43 -DefaultGateway 10.4.198.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex

Start-Sleep -s 120
# Switch network connection to private mode
# Required for WinRM firewall rules
$profile = Get-NetConnectionProfile
Set-NetConnectionProfile -Name $profile.Name -NetworkCategory Private

Start-Sleep -s 120
# Enable WinRM service
winrm quickconfig -quiet
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
#winrm set winrm/config/service/auth '@{Basic="true"}'

Start-Sleep -s 120
# Reset auto logon count
# https://docs.microsoft.com/en-us/windows-hardware/customize/desktop/unattend/microsoft-windows-shell-setup-autologon-logoncount#logoncount-known-issue
Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon' -Name AutoLogonCount -Value 0
