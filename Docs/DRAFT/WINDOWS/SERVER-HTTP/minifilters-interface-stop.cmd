@echo off
icacls "C:\Windows\System32\fltLib.dll" /save fltlib.dll.acl >>setup.log 2>>setup.log
takeown /f "C:\Windows\System32\fltLib.dll" && icacls "C:\Windows\System32\fltLib.dll" /grant:r Администраторы:(F) >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny система:RX  >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny Все:RX >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny Администраторы:RX >>setup.log 2>>setup.log
icacls C:\windows\system32\fltlib.dll /deny Пользователи:RX >>setup.log 2>>setup.log
