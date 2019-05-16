@echo off
rem Prechocoinstall.bat
rem This Script is Prepare to Chocolatey Install Procedure 
rem for Windows XP and Windows Server 2003
rem

rem Install WinXP Update
if not exist .\WindowsXP-KB968930-x86-RUS.exe goto pass_WINXP
echo "Install WinXP Update..."
.\WindowsXP-KB968930-x86-RUS.exe /quiet /norestart
:pass_WINXP

rem Install WinXP Update
if not exist .\WindowsServer2003-KB968930-x64-RUS.exe goto pass_WIN0364
echo "Install Win2003x64 Update..."
.\WindowsServer2003-KB968930-x64-RUS.exe /quiet /norestart
:pass_WIN0364

rem Install WinXP Update
if not exist .\WindowsServer2003-KB968930-x86-RUS.exe goto pass_WIN0386
echo "Install Win2003x86 Update..."
.\WindowsServer2003-KB968930-x86-RUS.exe /quiet /norestart
:pass_WIN0386

rem Install dotNet 4.0 Update
if not exist .\dotNetFx40_Full_x86_x64.exe goto pass_dotNet40
echo "Install dotNet4.0..."
.\dotNetFx40_Full_x86_x64.exe /quiet /norestart
:pass_dotNet40



