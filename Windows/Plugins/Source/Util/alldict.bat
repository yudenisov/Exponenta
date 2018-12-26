@echo off
rem engdict.bat
rem Программа предназначена для составления частотного словаря
rem из билингвы "Русский и английский" слова
rem Usage: alldict[.bat] <filenamе>
freqdic.exe %1 > "Test.dic.txt"
WScript "%UTIL%\FromTxtDicToExcel.vbs"