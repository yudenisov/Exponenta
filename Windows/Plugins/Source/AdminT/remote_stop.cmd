net stop sshd
net stop UmRdpService
net stop TermService
net stop RServer3
rem taskkill /IM prl_deskctl_wizard.exe /F
rem net stop prl_mobdisp
net stop TigerVNC
net stop chromoting
net stop TeamViewer
rem отключение почтового клиента
net stop OneSyncSvc_125ea6
rem Отключение подключений удалённого доступа
net stop RasMan
rem Misc и из Windows 7 Лучше не включать
net stop tlntsvr
net stop smtpsvc
net stop wms
