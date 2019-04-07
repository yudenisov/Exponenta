@echo off
rem Файл получения системной информации Windows о компьютере. Должны быть установлены дополнительные пакеты.

rem Получение информации средствами Windows 7-10 (установлены по-умолчанию)

%SystemRoot%\System32\systeminfo.exe > %PUB1%\Util\MySystemInfoCheck.txt
net user  >> %PUB1%\Util\MySystemInfoCheck.txt
net share >> %PUB1%\Util\MySystemInfoCheck.txt
wmic.exe ComputerSystem get Name, PartOfDomain, Domain, Workgroup, DNSHostName, DomainRole /FORMAT: TEXTVALUELIST  >> %PUB1%\Util\MySystemInfoCheck.txt

rem Получение дополнительных сведений программой из пакета Scripts (nht,.etn инсталляции. Может содержать вирусы)
rem %Util%\SysInfo.bat >>  >> %PUB1%\Util\MySystemInfoCheck.txt
