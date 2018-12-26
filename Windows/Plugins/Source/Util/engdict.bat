@echo off
rem engdict.bat
rem Программа предназначена для составления частотного словаря
rem английского языка из билингвы "Русский и английский" слова
rem Usage: engdict[.bat] <filenamе>
%UTIL%\engfreqdic32.exe %1 > "Test.dic.txt"
WScript "%UTIL%\FromTxtDicToExcel.vbs"