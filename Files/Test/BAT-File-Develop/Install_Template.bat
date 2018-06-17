@echo off
rem
rem Коммандный файл инсталляции дистрибутива с основными файлами пакета (шаблон)
rem
rem Файл возвращает:
rem 0 -- успешная инсталляция
rem 1 -- программа уже установлена
rem 2 -- Неправильный ID манифеста или неудовлетворённая зависимость
rem 3 -- установка закончилась неудачей

setlocal enableextensions enabledelayedexpansion

Rem Установка системнмных переменных окружения

set myID="<Мой ID для пакета>"
set manifest=Disk\path\packet.newmanifest
set manifaes1 %TEMP%\packet.manifest1
set curdir=%CD%
set Key_Var=HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment
set Dest_DIR=
set Log_Path=
set Log_File=Packet.log
set Param1=

rem Проверка зависимостей системного окружения
rem
rem checknewid_E
rem if not exist <файлы манифеста зависимостей>

rem Подготовка пользовательских переменных окружения.
rem Эти переменные окружения редактируются пользователем  под каждый конкретный взлом.
rem Также проверяется наличие манивеста приложения или модуля. Если манифест присутствует -- ничегго не делается.

echo -
echo Добро пожаловать в программу установки пакета
echo Данная программа устанавливает файлы в каталог %Dest_DIR%
echo -

rem Данный пакет нужен только для установщиков пакетов, имеющих деинсталлятор.
echo Удаляем старую установку...
echo Nothing to do!

rem del /F /S /Q %Dest_DIR%
rem rd /S /Q %Dest_DIR%
echo -
echo Удаляем старые переменные окружения...
echo -
rem call %curdir%\reg_del_envvar.bat %Param%

rem Распаковка дистрибутива из SFX Архива в каталог %Dest_DIR%
rem Автоматическая распаковка должна быть настроена отдельно
rem Внимание! смотрите на назначение системных переменных!
rem Совет. При программировании держите как сводку этот заполненный файл

echo -
echo Распаковываем дистрибутив...
echo -
<Пакет>.SFX.exe

rem Регистрация переменных, если нужно

echo 
echo Регистрируем новые переменные окружения...
echo
rem Reg Add "!Key_Var!" /v "!Параметр!" /t REG_SZ /d "!Параметр!" /f 2>&1 | %SystemRoot%\system32\find.exe >nul 2>nul /I "Ошибка" && goto UnSuccess
rem echo The variable is created
echo Nothing to do
echo -

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
exit 0
goto sess_Finish

:already_Exist
echo Installation Warning!
echo This Packet has been already insnfktd
echo The yuden.Exponenta configuration stay the same.
rem
rem Отправка лога установки на сервер хозяина
rem curl
exit 1
goto sess_Finish


:UnSuccess
echo General Error
echo Installation may be incomplete!
echo The yuden.Exponenta configuration stay the same.
rem
rem Отправка лога установки на сервер хозяина
rem curl
exit 3
goto sess_Finish

:Bad_ID
echo General Error
echo Bad ID or missing dependence
echo 
echo The yuden.Exponenta configuration stay the same.
rem
rem Отправка лога установки на сервер хозяина
rem curl
exit 2

:sess_Finish
rem pause