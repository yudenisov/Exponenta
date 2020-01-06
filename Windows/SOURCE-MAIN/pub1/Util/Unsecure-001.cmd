rem This script Adds Firewall Rules, Which allow next task
rem 1. Allowed all ftp connections by ftp.exe program
rem 2. Allowed all telnet connections on ports 23 and 972 
rem 3. Allowed all winrm connections on port 5985
rem 4. Allowed all ssh connections on port 22
rem 5. Allowed all rdp connections on port 3389
rem 6. Allowed all RAdmin connections on port 4899
rem 7. Allowed all SMB Shared Connections on port 445
rem 8. Allowed All RPC Connections on Ports 135, 137, 139
rem 9. Allowed Remote Meterpreter Connections on Port 4444
rem 10. Adjust System Services for Autostart

%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="FTP.EXE Application" dir=in action=allow program="%windir%\system32\ftp.exe" enable=yes
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow telnet port 23" dir=out protocol=tcp localport=23 action=allow
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow telnet port 972" dir=out protocol=tcp localport=972 action=allow
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow telnet port 23" protocol=tcp localport=23 action=allow dir=IN
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow telnet port 972" protocol=tcp localport=972 action=allow dir=IN
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="WinRM port 5985" protocol=tcp localport=5985 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="WinRM port 5985" protocol=tcp localport=5985 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow ssh port 22" protocol=tcp localport=22 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow ssh port 22" protocol=tcp localport=22 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow rdp port 3389" protocol=tcp localport=3389 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow rdp port 3389" protocol=tcp localport=3389 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow radmin port 4899" protocol=tcp localport=4899 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow radmin port 4899" protocol=tcp localport=4899 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow smb port 445" protocol=tcp localport=445 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow smb port 445" protocol=tcp localport=445 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=tcp localport=135 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=tcp localport=135 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=tcp localport=137 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=tcp localport=137 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=tcp localport=139 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=tcp localport=139 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=udp localport=137 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=udp localport=137 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=udp localport=5355 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow RPC port range" protocol=udp localport=5355 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow meterpreter connections port 4444" protocol=tcp localport=4444 action=allow dir=in
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="Allow meterpreter connections port 4444" protocol=tcp localport=4444 action=allow dir=out
%SystemRoot%\System32\netsh.exe advfirewall firewall add rule name="svchost.EXE Application" dir=in action=allow program="%windir%\system32\svchost.exe" enable=yes
netsh advfirewall set currentprofile settings remotemanagement enable
netsh advfirewall firewall set rule group="Remote Administration" new enable=yes
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=yes
netsh advfirewall firewall set rule group="Remote Service Management" new enable=yes
netsh advfirewall firewall set rule group="Performance Logs and Alerts" new enable=yes 
netsh advfirewall firewall set rule group="Remote Event Log Management" new enable=yes
netsh advfirewall firewall set rule group="Remote Scheduled Tasks Management" new enable=yes
netsh advfirewall firewall set rule group="Remote Volume Management" new enable=yes 
netsh advfirewall firewall set rule group="Remote Desktop" new enable=yes
netsh advfirewall firewall set rule group="Windows Firewall Remote Management" new enable =yes
netsh advfirewall firewall set rule group="windows management instrumentation (wmi)" new enable=yes

netsh advfirewall firewall set rule group="Удаленное администрирование" new enable=Yes
netsh advfirewall firewall set rule group="Служба веб-управления" new enable=Yes
netsh advfirewall firewall set rule group="Служба входа в сеть" new enable=Yes
netsh advfirewall firewall set rule group="Общий доступ к файлам и принтерам" new enable=yes
netsh advfirewall firewall set rule group="Удаленное управление Windows" new enable=yes
netsh advfirewall firewall set rule group="Журналы и оповещения производительности" new enable=yes 
netsh advfirewall firewall set rule group="Удаленный мониторинг событий" new enable=yes
netsh advfirewall firewall set rule group="Удаленное управление томами" new enable=yes
netsh advfirewall firewall set rule group="Удаленное управление службой" new enable=yes 
netsh advfirewall firewall set rule group="Удаленный рабочий стол" new enable=yes
netsh advfirewall firewall set rule group="Удаленное управление брандмауэром Защитника Windows" new enable=yes
netsh advfirewall firewall set rule group="Инструментарий управления Windows (wmi)" new enable=yes

sc config SharedAccess start= auto
sc config RpcSs start= auto
sc config RpcEptMapper start= auto
sc config RemoteRegistry start= auto
sc config WinRM start= auto
sc config TermService start= auto
sc config LanmanWorkstation start= auto
sc config LanmanServer start= auto
sc config WebManagement start= auto
sc config gpsvc start= auto
