@echo off
rem Файл получения системной информации Windows о компьютере. Должны быть установлены дополнительные пакеты.

rem Получение информации средствами Windows 7-10 (установлены по-умолчанию)
%SystemRoot%\System32\systeminfo.exe > c:\pub1\Util\MySystemInfoCheck.txt

rem Получение дополнительных сведений программой из пакета Scripts (nht,.etn инсталляции. Может содержать вирусы)
rem %Util%\SysInfo.bat >> c:\pub1\Util\MySystemInfoCheck.txt
