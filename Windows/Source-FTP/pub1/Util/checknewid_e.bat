@echo off
rem checknewid_e is a command file for check the presence of the ID in the manifest file
rem Usage <the ID> <the manifest file>
rem Script returns:
rem 0 if the ID из Present and correspondent
rem 1 if the ID not present or not correspondent

set id="%1"

rem Test
rem echo %id%
rem type %2
rem !Test

type %2 | %SystemRoot%\system32\find.exe /I %id% >nul 2>nul && goto reg_Present
goto reg_Absent

:reg_Present
echo Id %1 is present
goto Finish

:reg_absent
echo Id is not present
goto Finish

:Finish
