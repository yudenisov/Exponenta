@echo off
rem командный файл, компилирующий все 
rem макросы Multi-Edit 8.0 c расширением
rem *.S и *.SH в текущем каталоге.
rem
rem Для своей работы программа требует
rem настроенного файла cmacwin.bat
FOR  %%R IN ("*.s" "*.SH") DO CALL CMACWIN.BAT %%R
rem END
