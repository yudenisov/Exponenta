@echo off
rem reg_import_file.bat is a script to add into the Windows Registry a file <file> with check of his presistens
rem script returns 0 if success, 1 if file not found and 2 if cause general error at file adding
rem Usage: > reg_import_file.bat <file name with extension>
setlocal enableextensions enabledelayedexpansion

set sParam1=%1

if not defined sParam1 goto ch_NoParam
if not exist %1 goto ch_NoFile
%SystemRoot%\System32\reg.exe import %1
if errorlevel == 0 goto ch_Ok
goto ch_General

:ch_Ok
echo "Import is succces!"
goto Finish

:ch_General
echo "General Error in Adding file."
goto Finish

:ch_NoParam
:ch_NoFile
echo "File not found"
goto Finish

:Finish

