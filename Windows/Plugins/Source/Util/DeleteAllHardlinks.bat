@echo off

REM
REM Check for commandline args
REM
if "[%~1]" == "[]" goto error

set LN=ln.exe

REM
REM List hardlink sibblings and delete all siblings
REM
for /f "delims=" %%a in ('@%LN% --list "%~1"') do (
  del /f "%%a"
)

goto ausmausraus

:error
echo DeleteAllHardlinks: Argument is missing. Usage DeleteAllHardlinks ^<filename^>
echo e.g. DeleteAllHardlinks c:\data\myfile.txt

:ausmausraus
echo on

