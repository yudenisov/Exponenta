rem Разрешаем все протоколы для ftp.exe в брандмауэре
netsh advfirewall firewall add rule name="FTP.EXE Application" dir=in action=allow program="%windir%\system32\ftp.exe" enable=yes
