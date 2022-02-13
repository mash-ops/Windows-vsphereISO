REM @ECHO OFF &SETLOCAL disableDelayedExpansion

REM # Target WSUS url
REM reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /D "147.204.69.15"
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /D "http://147.204.68.26:1080"
REM reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUServer" /D "http://147.204.69.15:1080"

REM # Target WSUS Reporting server
REM reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /D "147.204.69.15"
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /D "http://147.204.68.26:1080"
REM reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "WUStatusServer" /D "http://147.204.69.15:1080"

REM # Target WSUS Computer Group
REM reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetGroup" /D "TEAM-1"
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetGroup" /D "INFRA-OSS"

REM # Use Client Side Targeting
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /v "TargetGroupEnabled" /D 1 /t reg_dword

REM # Download Updates and Notify User
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "AUOptions" /D 3 /t reg_dword

REM # Logged on user has option to reboot or not computer
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoRebootWithLoggedOnUsers" /D 1 /t reg_dword

REM # Enable Automatic Windows Updates
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "NoAutoUpdate" /D 0 /t reg_dword

REM # The WSUS Server is not used unless this key is set
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /v "UseWUServer" /D 1 /t reg_dword

wuauclt.exe /resetauthorization /detectnow
wuauclt.exe /reportnow /detectnow
