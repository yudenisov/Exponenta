@echo off
rem echo %3=%4=%2=%1=IniLine
%3
cd %4
if %1.==tex. goto tex
if %1.==for. goto for
if %1.==bas. goto bas
if %1.==bat. goto bat
if %1.==pas. goto pas
if %1.==pp. goto freepascal
if %1.==.tex. goto tex
if %1.==.for. goto for
if %1.==.bas. goto bas
if %1.==.bat. goto bat
if %1.==.pas. goto pas
if %1.==.pp. goto freepascal
if %1.==.srt. goto srt
rem no match q %1 %2
goto q
:tex
call c:\vc\lat2ps.bat %2
goto q
:for
call c:\vc\f32.bat %2
goto q
:bas
c:\vc\qbx.exe /run %2
goto q
:bat
block.bat
goto q
:pas
del %2.exe
C:\T\BP70\BIN\bpc.exe %2
%2.exe
goto q
:freepascal
del %2.exe
C:\pp\bin\go32v2\fpc.exe %2
%2.exe
goto q
:srt
echo %2%1
sort %2%1 >block_sr
del %2%1
ren block_sr %2%1
goto q
:q
pause
rem @echo on
