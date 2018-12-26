@echo on
for /f "tokens=2 delims==" %%a in ('wmic logicaldisk where drivetype^="3" get name /value^|find "="') do (
 set "disk=%%a"& cmd/v/c echo \\%Computername%\!disk:~,1!$\papka_shara
 rem set "disk=%%a"& cmd/v/c net share !disk:~,1!$
 rem cmd/c takeown /f "Путь к директории" /r /d y && icacls "Путь к директории" /grant Administrators:F /t
)
pause