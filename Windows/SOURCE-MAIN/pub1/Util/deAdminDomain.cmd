rem This Script deletes Domain USER MSSQLSR from local admin group
rem deletes Domain administrator Group from local  administrators group
rem Domain user MSSQLSR from the Domain Administrators group and from system
rem Script Must Run With Highest access right!
rem This file must encoded on 866 Windows Codepage
echo off
rem %SystemRoot%\System32\chcp.exe 1251
%SystemRoot%\System32\chcp.exe 866
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\MSSQLSR /delete
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\MSSQLSR /delete
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" %COMPUTERNAME%\"Администраторы" /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" %COMPUTERNAME%\"Administrators" /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Администраторы домена" MSSQLSR /delete /DOMAIN
%SystemRoot%\System32\net.exe localgroup "Domain Administrators" MSSQLSR /delete /DOMAIN
%SystemRoot%\System32\net.exe user MSSQLSR /delete /DOMAIN
%SystemRoot%\System32\chcp.exe 866
