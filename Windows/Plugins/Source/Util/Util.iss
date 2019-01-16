; -- Util.iss --
;
; This script Create Installator and deinstallator of the
; C:\Util catalog

[Setup]
AppName=Util Catalog
AppVersion=1.5.1
AllowRootDirectory=yes
AllowCancelDuringInstall=yes
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName={%UTIL|c:\Util}
MinVersion=6.0.6001
SetupLogging=yes
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=UtilSetup

[Files]

Source: "*.*"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]

Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: deletevalue noerror uninsdeletevalue; ValueType: string; ValueName: "UTIL"; ValueData: "{app}"

; Root: HKLM; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; Flags: noerror; ValueType: string; ValueName: "PATH"; ValueData: "{olddata};{app}"

[UninstallRun]

