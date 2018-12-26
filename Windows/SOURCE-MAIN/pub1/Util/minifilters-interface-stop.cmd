@echo off
%SystemRoot%\System32\chcp.exe 1251

%SystemRoot%\System32\icacls.exe "C:\Windows\System32\fltLib.dll" /save fltlib.dll.acl >>setup.log 2>>setup.log
%SystemRoot%\System32\takeown.eze /f "C:\Windows\System32\fltLib.dll" && %SystemRoot%\System32\icacls.exe "C:\Windows\System32\fltLib.dll" /grant:r Администраторы:(F) >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe C:\windows\system32\fltlib.dll /deny система:RX  >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe C:\windows\system32\fltlib.dll /deny Все:RX >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe C:\windows\system32\fltlib.dll /deny Администраторы:RX >>setup.log 2>>setup.log
%SystemRoot%\System32\icacls.exe C:\windows\system32\fltlib.dll /deny Пользователи:RX >>setup.log 2>>setup.log
%SystemRoot%\System32\chcp.exe 866
