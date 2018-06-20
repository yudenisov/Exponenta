@echo off
rem check_uname_present.bat is a file for checking some user login 
rem to be present in Windows
rem usage: > check_uname_present.bat <username>
rem where <username> is windows login to be tested
setlocal enableextensions enabledelayedexpansion

set sParam1=%~1

if not defined sParam1 goto ch_Absent
net user %1 >nul 2>&1
if  %errorLevel% == 0  goto ch_Present 
goto ch_Absent
:ch_Present
echo "This login is present in the Windows System."
goto ch_Finish
:ch_Absent
echo "This login is absent in the Windows System."
:ch_Finish