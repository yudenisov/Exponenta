net stop sshd
net stop UmRdpService
net stop TermService
net stop RServer3
rem taskkill /IM prl_deskctl_wizard.exe /F
rem net stop prl_mobdisp
net stop TigerVNC
net stop chromoting
rem net stop TeamViewer
rem net stop "KpyM Telnet SSH Server v1.19a"
rem net stop chromoting
net stop TeamViewer
rem отключение почтового клиента
rem net stop OneSyncSvc_125ea6
rem Отключение подключений удалённого доступа
rem net stop RasMan
rem Misc и из Windows 7 Лучше не включать
net stop tlntsvc
net stop smtpsvc
rem net stop wms
rem net stop dwmrcs
rem net stop dntus26
