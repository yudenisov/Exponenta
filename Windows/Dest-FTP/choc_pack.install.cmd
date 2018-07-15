@echo off
rem This file installs packets from the Chocolatey Packet Manager for Windows

set Chocolatey=%ALLUSERSPROFILE%\chocolatey

rem Check if Chocolatey is Installed
if not exist %Chocolatey% goto ch_not_installed
echo "Install Chocolatey..."
%Chocolatey%\bin\choco.exe install -y --force --ignore-checksums sysinternals curl wget
rem %Chocolatey%\bin\choco.exe install -y --force --ignore-checksums 7Zip.install 7zip 7zip.portable
rem
%Chocolatey%\bin\RefreshEnv.cmd
echo "Success! Chocolatey Packet Manager has been installed."
goto Finish

:ch_not_installed
echo Error: Chocolatey Packet Manager is not installed
echo Chocolatey's packets can't be installed
goto Finish

:Finish
