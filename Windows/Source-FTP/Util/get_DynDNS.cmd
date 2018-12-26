@echo off

rem get hldns
wget.exe -O- http://hldns.ru/update/%hldnstoken%

rem get entrydns
wget.exe --no-check-certificate https://entrydns.net/records/modify/%entrydnstoken%
