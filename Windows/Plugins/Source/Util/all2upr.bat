@echo off
rem командный файл по переводу файлов
rem отмеченных в шаблоне,
rem в верхний регистр
rem Синтаксис команды:
rem > all2upr.bat <имя файла или шаблон>
rem
FOR  %%R IN (%1) DO CALL perlbt.bat toUpperName %%R
rem END
