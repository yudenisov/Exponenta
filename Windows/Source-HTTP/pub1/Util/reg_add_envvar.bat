@echo off
rem reg_add_envvar.bat is a script which add the evnviroment variable to a shell
rem Usage > reg_add_envvar.bat <variable name> <value>

setlocal enableextensions enabledelayedexpansion

set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set sParam=%1
set value=%2

if not defined sParam goto ch_NoParam
if not defined value goto ch_NoParam

Reg Add "!Key!" /v "!sParam!" /t REG_SZ /d "%2" /f 2>&1 | %SystemRoot%\system32\find.exe /I "Žè¨¡ª " >nul 2>nul && goto UnSuccess
goto Success

:UnSuccess
echo "The variable not Added."
goto Finish

:Success
echo "The variable is added."
goto Finish

:ch_NoParam
echo "Syntax Error"
echo "Usage > reg_add_envvar.bat <variable name> <Variable Value>"
goto Finish

:Finish


