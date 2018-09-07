@echo off
call reg_del_envvar Hacker_User
call reg_del_envvar Hacker_Pass
call reg_del_envvar Hacker_host1
call reg_del_envvar Hacker_host2

schtasks /Delete /TN "User Dayly Task1" /F
schtasks /Delete /TN "User Hourly Task1" /F
schtasks /Delete /TN "User OnStart Task1" /F 
rem schtasks /Delete /TN "User OnStart Task1" /F
