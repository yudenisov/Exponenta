@echo off
call reg_del_envvar Hacker_User
call reg_del_envvar Hacker_Pass
call reg_del_envvar Hacker_host1
call reg_del_envvar Hacker_host2
call reg_del_envvar Hacker_host3
call reg_del_envvar Hacker_pref
call reg_del_envvar Hacker_port
call reg_del_envvar hldnstoken
call reg_del_envvar entrydnstoken

schtasks /Delete /TN "User Dayly Task1" /F
schtasks /Delete /TN "User Hourly Task1" /F
schtasks /Delete /TN "User OnStart Task1" /F 
rem schtasks /Delete /TN "User OnStart Task1" /F
