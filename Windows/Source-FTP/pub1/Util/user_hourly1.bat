@echo off
REM Получаем внешний IP адрес маршрутизатора
call "%PUB1%\Util\getip_1.cmd"
call %PUB1%\Util\get_DynDNS.cmd
rem Отправляем его на хост -компьютер
call %PUB1%\Util\send_ip.cmd
call %PUB1%\Util\send.syteminfocheck.cmd

