@echo off
echo Usage: printprn.bat myfile
rem pause
@echo off
if NOT EXIST %1 goto Sample
@copy /b %1 prn
goto Quit
:Sample
echo File %1 not exist
:Quit
