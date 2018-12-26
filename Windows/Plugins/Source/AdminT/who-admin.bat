@echo OFF
WHOAMI /PRIV | find /i "SeRemoteShutdownPrivilege"
if %ERRORLEVEL% == 0 goto admin
msg * Задача выполняется с правами пользователя - %USERNAME%
exit
:admin
msg * Задача выполняется с правами администратора.
