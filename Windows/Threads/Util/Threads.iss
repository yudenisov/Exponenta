; -- Exponenta.iss --
;
; This script Create Installator and deinstallator of the
; Exponenta Threads Packages

[Setup]
AppName=Exponenta Threads Packages
AppVersion=1.0.0.0
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName={%UTIL|c:\Util}
MinVersion=0,5.01.2600sp3
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=ThreadsSetup
AllowNoIcons=True
AppPublisher=New Internet Technologies Ltd.
RestartApplications=False
UserInfoPage=True
VersionInfoVersion=1.0.0.0
VersionInfoCompany=New Internet Technologies Ltd.
VersionInfoTextVersion=Version 1.0.0.0_alpha
VersionInfoCopyright=Copyright (c) New Internet Technologies, 2019
VersionInfoProductName=Exponenta Threads Packages
VersionInfoProductVersion=1.0.0.0
Password=Admin01234
RestartIfNeededByRun=False
SolidCompression=True

[Files]
;Source: "*.cmd"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.bat"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.exe"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.dll"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.lib"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.cnf"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.h"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.reg"; DestDir: "{app}\Util"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: descript.ion; DestDir: "{app}\Util"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.md"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[UninstallRun]

;Filename: {app}\Util\uninstall-mainexponenta.cmd; Flags: runhidden
Filename: {app}\Util\minifilters-interface-restore.cmd; Flags: runhidden

