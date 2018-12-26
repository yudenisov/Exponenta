@echo off
rem командный файл по переводу файлов
rem отмеченных в шаблоне,
rem в нижний регистр
rem Синтаксис команды:
rem > all2lwr.bat <имя файла или шаблон>
rem
FOR  %%R IN (%1) DO CALL perlbt.bat toLowerName %%R
rem END
