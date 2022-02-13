@ECHO OFF &SETLOCAL disableDelayedExpansion
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate" /f
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f
reg.exe delete "HKLM\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU" /f

wuauclt.exe /resetauthorization /detectnow
wuauclt.exe /reportnow /detectnow
