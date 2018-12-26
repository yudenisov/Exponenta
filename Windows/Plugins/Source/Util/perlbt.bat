@echo off
rem Диску Y: (он должен быть свободен)
rem назначается имя текущего каталога
rem командой subst Y: .
subst Y: .
rem Вызываем интерпретатор Perl
rem Скрипт-файл на языке Perl должен
rem находиться на C:\Perl\user\PerlScripts
perl %SCRIPTS%\Perl\%1.pl %2 %3 %4 %5 %6 %7 %8 %9
REM Удаляем диск Y:
subst Y: /D
