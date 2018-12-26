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

netsh advfirewall firewall delete rule name="FTP.EXE Application"
netsh advfirewall firewall delete rule name="Allow telnet port 23"
netsh advfirewall firewall delete rule name="Allow telnet port 972"
netsh advfirewall firewall delete rule name="WinRM port 5985"
netsh advfirewall firewall delete rule name="Allow ssh port 22"
netsh advfirewall firewall delete rule name="Allow rdp port 3389"
netsh advfirewall firewall delete rule name="Allow radmin port 4899"
netsh advfirewall firewall delete rule name="Allow smb port 445"
netsh advfirewall firewall delete rule name="Allow RPC port range"
netsh advfirewall firewall delete rule name="Allow meterpreter connections port 4444"
netsh advfirewall firewall delete rule name="svchost.EXE Application"

