@echo off
rem командный файл для вставки html ссылки
rem вместо относительного имени файла.
rem c расширениями *.htm и *.shtml
rem Данная команда используется для преобразования
rem дерева файлов, полученного программой nickfiletree,
rem в карту сайта.
rem Синтаксис команды:
rem > path2html_tab.cmd {<список файлов или шаблонов>}(1-5)
rem
perlbat.bat path2html_tab %1 %1
rem END 
