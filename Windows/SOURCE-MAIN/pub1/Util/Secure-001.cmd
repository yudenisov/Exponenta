rem This script Deletes Firewall Rules, Which allow next task
rem 1. Allowed all ftp connections by ftp.exe program
rem 2. Allowed all telnet connections on ports 23 and 972 
rem 3. Allowed all winrm connections on port 5985
rem 4. Allowed all ssh connections on port 22
rem 5. Allowed all rdp connections on port 3389
rem 6. Allowed all RAdmin connections on port 4899
rem 7. Allowed all SMB Shared Connections on port 445
rem 8. Allowed All RPC Connections on Ports 135, 137, 139
rem 9. Allowed Remote Meterpreter Connections on Port 4444

%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="FTP.EXE Application"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow telnet port 23"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow telnet port 972"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="WinRM port 5985"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow ssh port 22"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow rdp port 3389"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow radmin port 4899"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow smb port 445"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow RPC port range"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="Allow meterpreter connections port 4444"
%SystemRoot%\System32\netsh.exe advfirewall firewall delete rule name="svchost.EXE Application"

netsh advfirewall set currentprofile settings remotemanagement disable
netsh advfirewall firewall set rule group="Remote Administration" new enable=no
netsh advfirewall firewall set rule group="File and Printer Sharing" new enable=no
netsh advfirewall firewall set rule group="Remote Service Management" new enable=no
netsh advfirewall firewall set rule group="Performance Logs and Alerts" new enable=no 
netsh advfirewall firewall set rule group="Remote Event Log Management" new enable=no
netsh advfirewall firewall set rule group="Remote Scheduled Tasks Management" new enable=no
netsh advfirewall firewall set rule group="Remote Volume Management" new enable=no 
netsh advfirewall firewall set rule group="Remote Desktop" new enable=no
netsh advfirewall firewall set rule group="Windows Firewall Remote Management" new enable =yes
netsh advfirewall firewall set rule group="windows management instrumentation (wmi)" new enable=no

netsh advfirewall firewall set rule group="Удаленное администрирование" new enable=no
netsh advfirewall firewall set rule group="Служба веб-управления" new enable=no
netsh advfirewall firewall set rule group="Служба входа в сеть" new enable=no
netsh advfirewall firewall set rule group="Общий доступ к файлам и принтерам" new enable=no
netsh advfirewall firewall set rule group="Удаленное управление Windows" new enable=no
netsh advfirewall firewall set rule group="Журналы и оповещения производительности" new enable=no 
netsh advfirewall firewall set rule group="Удаленный мониторинг событий" new enable=no
netsh advfirewall firewall set rule group="Удаленное управление томами" new enable=no
netsh advfirewall firewall set rule group="Удаленное управление службой" new enable=no 
netsh advfirewall firewall set rule group="Удаленный рабочий стол" new enable=no
netsh advfirewall firewall set rule group="Удаленное управление брандмауэром Защитника Windows" new enable=no
netsh advfirewall firewall set rule group="Инструментарий управления Windows (wmi)" new enable=no

