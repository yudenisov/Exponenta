; -- Hidden_Start.iss --
;
; This script Create Installator and Uninstallator of the
; Exponenta Styler Plugin -- Hidden Start (RePack)

[Setup]
AppName=Hidden Start
AppVersion=4.5.0
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName="{pf}\Hidden Start"
MinVersion=6.0.6001
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=no
OutputDir=d:\yudenisov\Distrib
OutputBaseFilename=HiddenStart450SetupRePack

[Dirs]
Name: "{app}\examples"; Permissions: everyone-full
Name: "{app}\examples\Backup"; Permissions: everyone-full
Name: "{app}\examples\PNGOut"; Permissions: everyone-full
Name: "{app}\examples\SignTool"; Permissions: everyone-full
Name: "{app}\examples\UAC"; Permissions: everyone-full
Name: "{app}\reg"; Permissions: everyone-full

[Files]
Source: "*.rtf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.bat"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.reg"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.txt"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.js"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: descript.ion; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.md"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

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

