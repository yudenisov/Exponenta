@echo off
rem командный файл, компилирующий все 
rem макросы Multi-Edit 2008 c расширением
rem *.S и *.SH в текущем каталоге.
rem
rem Для своей работы программа требует
rem настроенного файла cmacw08.cmd
FOR  %%R IN ("*.s" "*.SH") DO CALL cmacw08.cmd %%R
rem END
