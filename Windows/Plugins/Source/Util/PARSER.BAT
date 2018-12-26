echo on
"C:\Util\ssi_parser_win.exe" "%1" top.inc right.inc tisers.inc > "%1.$$$"
call sedbt1.bat SHTMLCORR "%1.$$$" "%1.html"
call C:\UTIL\perlbt.bat toExtensionTrimm "%1.html"
del "%1.$$$"