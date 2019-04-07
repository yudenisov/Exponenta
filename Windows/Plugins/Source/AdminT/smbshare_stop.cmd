@SETLOCAL
@ECHO OFF 
:: Script stops remote access to smb1 and smb2 protocols
:: to Windows Share
:: Usage:
:: smbshare_stop.cmd [1|2|all|common]
:: Where 1 means protocol smb1, 2 means protocol smb2/smb3,
:: 'all' means both of this protocols and 'common' temporary stop services

:: check parameters 
IF "%1"=="" GOTO :NoParam 

:: main stuff here 
::::CARET
IF "%1"=="1" GOTO :SMB01
IF "%1"=="2" GOTO :SMB02
IF "%1"=="all" GOTO :ALL
IF "%1"=="common" GOTO :COMMON
GOTO :NoParam
:SMB01
sc.exe config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc.exe config mrxsmb10 start= disabled
GOTO :COMMON
:SMB02
sc.exe config lanmanworkstation depend= bowser/mrxsmb10/nsi
sc.exe config lanmanworkstation depend= bowser/nsi
sc.exe config mrxsmb20 start= disabled
@GOTO :COMMON
:ALL
sc.exe config mrxsmb10 start= disabled
sc.exe config mrxsmb20 start= disabled
:COMMON
rem net stop KtmRm
rem net stop MSDTS
net stop VMWareHostd
net stop Browser
net stop LanmanWorkstation
net stop LanmanServer
net stop mrxsmb10
net stop mrxsmb20
@EXIT /B 0

ENDLOCAL
@EXIT /B %ERRORLEVEL% 

:NoParam 
ECHO %~n0. Command line error: "%*" 
ENDLOCAL
@EXIT /B 1
