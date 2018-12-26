@echo off
if not exist %PUB1%\Distrib\plugins\duck-install.msi goto pass_Duck
echo "Install Duck..."
%SystemRoot%\system32\msiexec.exe /i %PUB1%\Distrib\plugins\duck-install.msi /norestart /QN /L*V %TEMP%\duck.log
:pass_Duck
