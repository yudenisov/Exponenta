@echo off
sc config SharedAccess start= disabled
sc config RpcSs start= auto
sc config RemoteRegistry start= auto
netsh advfirewall firewall add rule name="WinRM" protocol=tcp localport=5985 action=allow dir=in
netsh advfirewall firewall add rule name="WinRM" protocol=tcp localport=5985 action=allow dir=out
