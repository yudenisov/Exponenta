rem ajust Shere on computer

rem UnShare All Local Disks
for /f "tokens=2 delims==" %%a in ('wmic logicaldisk where drivetype^="3" get name /value^|find "="') rem do (
 set "disk=%%a"& cmd/v/c net share !disk:~,1!$ /DELETE
rem set "disk=%%a"& cmd/v/c net share !disk:~,1!$ /GRANT:"Administrators,FULL"
)

rem unshare local disk c
net share ce /DELETE
net share cr /DELETE
