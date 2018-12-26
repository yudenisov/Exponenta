rem This Script deletes domain user MSSQLSR. from local group Administrators
rem delete @Domain Administrators@ from local administrators
rem Local users from local administrators group and from system
rem Script Must Run With Highest access right!
rem This file must encoded on 866 Windows Codepage
echo off
rem %SystemRoot%\System32\chcp.exe 1251
%SystemRoot%\System32\chcp.exe 866
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\MSSQLSR /delete
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\MSSQLSR /delete
%SystemRoot%\System32\net.exe localgroup Администраторы %DomainUser%\"Администраторы домена" /delete
%SystemRoot%\System32\net.exe localgroup Administrators %DomainUser%\"Domain Administrators" /delete
%SystemRoot%\System32\net.exe localgroup Администраторы MSSQLSR /delete
%SystemRoot%\System32\net.exe localgroup Administrators MSSQLSR /delete
%SystemRoot%\System32\net.exe user MSSQLSR /delete
%SystemRoot%\System32\chcp.exe 866
