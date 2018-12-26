rem ajust Shere on computer

rem Share All Local Disks
for /f "tokens=2 delims==" %%a in ('wmic logicaldisk where drivetype^="3" get name /value^|find "="') do (
rem set "disk=%%a"& cmd/v/c net share !disk:~,1!$ /GRANT:"ANONYMOUS LOGON,FULL" /GRANT:"Everyone,FULL"
 set "disk=%%a"& cmd/v/c net share !disk:~,1!$ /GRANT:"Администраторы,FULL" /GRANT:"Все,FULL"
)
rem Share Local Disk c:
net share ce=C:\ /GRANT:"ANONYMOUS LOGON,FULL" /GRANT:"Everyone,FULL" /GRANT:"Administrators,FULL"
net share cr=C:\ /GRANT:"Администраторы,FULL" /GRANT:"Все,FULL"
