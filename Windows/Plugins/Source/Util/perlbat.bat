@echo off
rem Диску Y: (он должен быть свободен)
rem назначается имя текущего каталога
rem командой subst Y: .
subst Y: .
rem Вызываем интерпретатор Perl
rem Скрипт-файл на языке Perl должен
rem находиться на C:\Perl\user\PerlScripts
perl %SCRIPTS%\Perl\%1.pl Y:\%2 Y:\%3 Y:\%4 Y:\%5 Y:\%6 Y:\%7 Y:\%8 Y:\%9
REM Удаляем диск Y:
subst Y: /D
