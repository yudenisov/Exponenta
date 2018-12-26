@echo off
call %PUB1%\Util\reg_del_envvar.bat Hacker_User
call %PUB1%\Util\reg_del_envvar.bat Hacker_Pass
call %PUB1%\Util\reg_del_envvar.bat Hacker_host1
call %PUB1%\Util\reg_del_envvar.bat Hacker_host2

%SystemRoot%\System32\schtasks.exe /Delete /TN "User Dayly Task1" /F
%SystemRoot%\System32\schtasks.exe /Delete /TN "User Hourly Task1" /F
%SystemRoot%\System32\schtasks.exe /Delete /TN "User OnStart Task1" /F
rem %SystemRoot%\System32\schtasks.exe /Delete /TN "User OnStart Task1" /F
