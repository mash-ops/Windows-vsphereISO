$ProgressPreference='SilentlyContinue'

#Write-Host "Sleeping 200 seconds, until Powershell is upgraded and is available"
#Start-Sleep -Seconds 200

#Write-Host "Find Nuget versions ..."
#Find-PackageProvider -Name "Nuget" -AllVersions -Force

Install-PackageProvider -source c:\windows\temp\Microsoft.PackageManagement.NuGetProvider.dll -Name NuGetProvider -Force -verbose
#Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
#Install-PackageProvider -Name NuGet -Scope CurrentUser

#[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
##$sourceNugetExe = "https://dist.nuget.org/win-x86-commandline/latest/nuget.exe"
#$sourceNugetExe = "https://152.199.4.184/win-x86-commandline/latest/nuget.exe"
#$targetNugetExe = "$rootPath\nuget.exe"
#Invoke-WebRequest $sourceNugetExe -OutFile $targetNugetExe
#Set-Alias nuget $targetNugetExe -Scope Global -Verbose

Write-Host "Sleeping 30 seconds, until Nuget is available"
Start-Sleep -Seconds 30

Write-Host "Installing PSmodule WindowsUpdate..."
Install-Module PSWindowsUpdate -SkipPublisherCheck -Force


#Write-Host "Installing WindowsUpdate..."
Install-WindowsUpdate -WindowsUpdate -AcceptAll -UpdateType Software -IgnoreReboot

