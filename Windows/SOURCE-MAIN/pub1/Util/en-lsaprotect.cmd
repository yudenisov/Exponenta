rem This Script is Enable LSA Protect for Windows 8 - Windows 10 computers
rem
rem Usage: en-lsaprotect.cmd
rem

setlocal enableextensions enabledelayedexpansion

set Key1=HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\LSA

set Param1=1

%SystemRoot%\System32\reg.exe Add "!Key1!" /v "RunAsPPL" /t REG_DWORD /d "!Param1!" /f 2>&1 | %SystemRoot%\system32\find.exe /I "Žè¨¡ª " >nul 2>nul && goto UnSuccess

%SystemRoot%\System32\reg.exe Add "!Key1!" /v "TokenLeakDetectDelaySecs" /t REG_DWORD /d "30" /f 2>&1 | %SystemRoot%\system32\find.exe /I "Žè¨¡ª " >nul 2>nul && goto UnSuccess

goto Success

:UnSuccess
echo "Error at Parameter Assign"
goto Finish

:Success
echo "Success at Parameter Assign"
goto Finish

:Finish