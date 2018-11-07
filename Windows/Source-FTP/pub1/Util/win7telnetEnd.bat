@echo off
dism /online /Enable-Feature /FeatureName:TelnetServer
sc config tlntsvr start= auto
tlntadmn config port=972 sec=-NTLM
