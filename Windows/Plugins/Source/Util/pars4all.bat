@echo off
rem командный файл, работающий как 
rem "распознаватель" SSI вкладок в файлах
rem с шаблоном: *.shtml
rem Требует правильной настройки файла PARSER.BAT
FOR  %%R IN ("*.shtml") DO CALL PARSER.BAT %%R
rem END
