; -- Hidden_Start.iss --
;
; This script Create Installator and Uninstallator of the
; Exponenta Styler Plugin -- Hidden Start (RePack)

[Setup]
AppName=Hidden Start
AppVersion=4.5.0.1
AllowRootDirectory=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName="C:\Program Files\Hidden Start"
MinVersion=0,5.01.2600sp3
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=HiddenStart450SetupRePack
LicenseFile=.\License.rtf
RestartIfNeededByRun=False
UserInfoPage=True
VersionInfoVersion=4.5.0.1
VersionInfoCompany=New Internet Technologies Inc.
VersionInfoProductName=Hidden Files Repack
SolidCompression=True
VersionInfoCopyright=Copyright (c) Alexandr Avdonin 2017
AppCopyright=Copyright (c) Alexandr Avdonin 2017
SetupIconFile=..\Recources\Icons_GUI.ico
AllowNoIcons=True
DefaultGroupName=Hidden Start

[Dirs]
Name: "{app}\examples"; Permissions: everyone-full
Name: "{app}\examples\Backup"; Permissions: everyone-full
Name: "{app}\examples\PNGOut"; Permissions: everyone-full
Name: "{app}\examples\SignTool"; Permissions: everyone-full
Name: "{app}\examples\UAC"; Permissions: everyone-full
Name: "{app}\reg"; Permissions: everyone-full

[Files]
;Source: "*.rtf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.bat"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.reg"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.txt"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.js"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "descript.ion"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.md"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "HstartUI.exe"; DestDir: "{app}"; MinVersion: 0,5.01.2600sp3; Permissions: everyone-full
Source: "hstart.exe"; DestDir: "{app}"; MinVersion: 0,5.01.2600sp3; Permissions: everyone-full
Source: "hstart64.exe"; DestDir: "{app}"; Permissions: everyone-full
Source: "License.rtf"; DestDir: "{app}"

[Registry]

Root: HKCU; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletekey noerror uninsdeletekey
Root: HKCU; Subkey: "Software\Alexander Avdonin\Hidden Start\4.0"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "FlagsUI"; ValueData: "$0000000d"
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletekey noerror uninsdeletekey
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "@"; ValueData: "C:\\Program Files\\Hidden Start"
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "RegName"; ValueData: "Юрий Денисов"
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "RegCode"; ValueData: "VTE8V-FQC48-98NGW"
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionMajor"; ValueData: "00000004"
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionMinor"; ValueData: "00000005"
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionBuild"; ValueData: "00000000"
Root: HKLM; Subkey: "Software\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionRevision"; ValueData: "00000000"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletekey noerror uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "@"; ValueData: "C:\\Program Files\\Hidden Start"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "RegName"; ValueData: "Юрий Денисов"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "RegCode"; ValueData: "VTE8V-FQC48-98NGW"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionMajor"; ValueData: "00000004"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionMinor"; ValueData: "00000005"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionBuild"; ValueData: "00000000"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Alexander Avdonin\Hidden Start"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: dword; ValueName: "VersionRevision"; ValueData: "00000000"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hstart.exe"; Flags: deletekey noerror uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hstart.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "@"; ValueData: "C:\\Program Files\\Hidden Start\\hstart.exe"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hstart.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "Path"; ValueData: "C:\\Program Files\\Hidden Start"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hstart64.exe"; Flags: deletekey noerror uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hstart64.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "@"; ValueData: "C:\\Program Files\\Hidden Start\\hstart64.exe"
Root: HKLM; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hstart64.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "Path"; ValueData: "C:\\Program Files\\Hidden Start"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\App Paths\hstart.exe"; Flags: deletekey noerror uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\App Paths\hstart.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "@"; ValueData: "C:\\Program Files\\Hidden Start\\hstart.exe"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\App Paths\hstart.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "Path"; ValueData: "C:\\Program Files\\Hidden Start"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\App Paths\hstart64.exe"; Flags: deletekey noerror uninsdeletekey
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\App Paths\hstart64.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "@"; ValueData: "C:\\Program Files\\Hidden Start\\hstart64.exe"
Root: HKLM; Subkey: "SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\App Paths\hstart64.exe"; Flags: deletevalue noerror; Permissions: everyone-full; ValueType: string; ValueName: "Path"; ValueData: "C:\\Program Files\\Hidden Start"

[Icons]
Name: "{group}\Hidden Start GUI"; Filename: "{app}\HstartUI.exe"
Name: "{group}\Hidden Start 32 bit"; Filename: "{app}\hstart.exe"
Name: "{group}\Hidden Start 64 bit"; Filename: "{app}\hstart64.exe"
Name: "{group}\License"; Filename: "{app}\License.rtf"
