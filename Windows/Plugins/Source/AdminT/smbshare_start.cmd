@SETLOCAL
@ECHO ON 
:: Script start remote access to smb1 and smb2 protocols
:: to Windows Share
:: Usage:
:: smbshare_start.cmd [1|2|all|common]
:: Where 1 means protocol smb1, 2 means protocol smb2/smb3,
:: 'all' means both of this protocols and 'common' start services

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
sc.exe config mrxsmb10 start= auto
GOTO :COMMON
:SMB02
sc.exe config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc.exe config mrxsmb20 start= auto
@GOTO :COMMON
:ALL
sc.exe config lanmanworkstation depend= bowser/mrxsmb20/nsi
sc.exe config mrxsmb10 start= auto
sc.exe config mrxsmb20 start= auto
:COMMON
net start mrxsmb10
net start mrxsmb20
net start LanmanWorkstation
net start LanmanServer
net start VMWareHostd
net start Browser
rem net stop KtmRm
rem net stop MSDTS
@EXIT /B 0

ENDLOCAL
@EXIT /B %ERRORLEVEL% 

:NoParam 
ECHO %~n0. Command line error: "%*" 
ENDLOCAL
@EXIT /B 1
