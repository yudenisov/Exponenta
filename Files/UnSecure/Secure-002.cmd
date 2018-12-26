rem This file adjust remote access on protocols winrm, telnet and rdp

rem adjust RDP service
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 1 /f

rem adjust Remote Assistant
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fAllowToGetHelp /t REG_DWORD /d 0 /f

rem adjust the telnet service
tlntadmn config port=23 sec=-NTLM
sc config tlntsvr start= Disabled
dism /online /Disable-Feature /FeatureName:TelnetServer

rem adjust the winrm service
sc config winrm start= Disabled

