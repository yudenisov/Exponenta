@echo off
rem This file installs the Chocolatey Packet Manager for Windows

set PowerShellDir=%SystemRoot%\System32\WindowsPowerShell

rem Check if PowerShell is Installed
if not exist %PowerShellDir% goto ps_not_installed
echo "Install Chocolatey..."
@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
echo "Success! Chocolatey Packet Manager has been installed."
goto Finish

:ps_not_installed
echo Error: PowerShell packet is not installed
echo Chocolatey packet can't be installed
goto Finish

:Finish
