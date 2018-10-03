@echo off
if not exist duck-install.msi goto pass_Duck
echo "Install Duck..."
%SystemRoot%\system32\msiexec.exe /i duck-install.msi /norestart /QN /L*V %TEMP%\duck.log
:pass_Duck
