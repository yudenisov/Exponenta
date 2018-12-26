rem функции обновления и телеметрии Windows Включать и отключать все вместе
net stop wuauserv
net stop DiagTrack
Net stop wscsvc
Net stop bits
rem Различные системные. Отключать не рекомендуется, но всё-таки...
net stop fdPHost
Net stop dcomlaunch
Net stop Winmgmt
net stop sppsvc
Net stop rpclocator
Net stop wmi
net stop wmiappsrv
net stop sens
Net stop eventsystem
Net stop comsysapp
Net stop rpcss


