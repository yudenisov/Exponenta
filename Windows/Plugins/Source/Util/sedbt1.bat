@echo off
rem Вызываем потоковый редактор sed
rem Скрипт-файл на языке Perl должен
rem находиться на C:\Scripts\Sed
rem Синтаксис команды:
rem > sedbat.bat <имя скрипта> [<список преобразуемых файлов>]
rem
sed -f "C:\Scripts\Sed\%1.sh" "%2" > "%3"
