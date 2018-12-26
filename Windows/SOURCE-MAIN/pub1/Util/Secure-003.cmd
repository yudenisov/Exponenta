rem ajust Shere on computer

rem UnShare All Local Disks
for /f "tokens=2 delims==" %%a in ('wmic logicaldisk where drivetype^="3" get name /value^|find "="') rem do (
 set "disk=%%a"& cmd/v/c %SystemRoot%\System32\net.exe share !disk:~,1!$ /DELETE
rem set "disk=%%a"& cmd/v/c %SystemRoot%\System32\net.exe share !disk:~,1!$ /GRANT:"Administrators,FULL"
)

rem unshare local disk c
%SystemRoot%\System32\net.exe share ce /DELETE
%SystemRoot%\System32\net.exe share cr /DELETE
