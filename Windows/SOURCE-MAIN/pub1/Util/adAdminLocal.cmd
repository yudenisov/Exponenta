rem This script is created thr local user MSSQLSR and register it
rem As local administrator
rem It also registred Group "Domain Administrators" as local group
rem and domain user MSSQLSR as local administrator
rem This file must encoded on 866 Windows Codepage
echo off
rem %SystemRoot%\System32\chcp.exe 1251
%SystemRoot%\System32\chcp.exe 866
%SystemRoot%\System32\net.exe user MSSQLSR Admin01234 /add
%SystemRoot%\System32\net.exe localgroup Администраторы MSSQLSR /add
%SystemRoot%\System32\net.exe localgroup Administrators MSSQLSR /add
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\"Администраторы домена" /add
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\"Domain Administrators" /add
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\MSSQLSR /add
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\MSSQLSR /add
call %PUB1%\Util\reg_import_file.bat %PUB1%\Util\winlogon-SpecialAccounts.reg
%SystemRoot%\System32\chcp.exe 866
