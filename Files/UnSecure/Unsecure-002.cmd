rem This file adjust remote access on protocols winrm, telnet and rdp

rem ajust RDP service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f

rem ajust Remote Assistant
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 1 /f

rem ajust the telnet service
dism /online /Enable-Feature /FeatureName:TelnetServer
sc config tlntsvr start= auto
tlntadmn config port=972 sec=-NTLM

rem ajust the winrm service
winrm qc -quiet
sc config winrm start= auto


