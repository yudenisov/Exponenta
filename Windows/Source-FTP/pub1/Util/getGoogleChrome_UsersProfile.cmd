@echo off
rem The program compress the GoogleChrome "User Data" Directory at tar.gz archieve
rem USAGE
rem		getGoogleChrome_UsersProfile.cmd «user»
rem
setlocal enableextensions enabledelayedexpansion

if not exist %1 goto ch_NoUser
set USER1=%1
tar -czvf  %PUB1%\Util\ChromeUsersData.tar.gz "C:\Users\%USER1%\AppData\Local\Google\Chrome\User Data"
goto Finish
:NoUser
echo "GENERAL ERROR: No User Assigned"
:Finish
