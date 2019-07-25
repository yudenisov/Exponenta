rem This Script is Disable WDigest protocol for Windows 7 - Windows 10 computers
rem
rem Usage: dis-wdigest.cmd
rem

setlocal enableextensions enabledelayedexpansion

set Key1=HKLM\System\CurrentControlSet\Control\SecurityProviders\WDigest
set Key2=HKLM\System\CurrentControlSet\Control\SecurityProviders\WDigest
set Param1=0
set Param2=0

%SystemRoot%\System32\reg.exe Add "!Key1!" /v "UseLogonCredential" /t REG_DWORD /d "!Param1!" /f 2>&1 | %SystemRoot%\system32\find.exe /I "Žè¨¡ª " >nul 2>nul && goto UnSuccess

%SystemRoot%\System32\reg.exe Add "!Key2!" /v "Negotiate" /t REG_DWORD /d "!Param2!" /f 2>&1 | %SystemRoot%\system32\find.exe /I "Žè¨¡ª " >nul 2>nul && goto UnSuccess

goto Success

:UnSuccess
echo "Error at Parameter Assign"
goto Finish

:Success
echo "Success at Parameter Assign"
goto Finish

:Finish