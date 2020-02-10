; -- AdminT.iss --
;
; This script Create Installator and deinstallator of the
; AdminT Styler plugin -- Elevation

[Setup]
AppName=AdminT Exponenta Plugin
AppVersion=0.6.5
AllowRootDirectory=yes
AllowCancelDuringInstall=False
ArchitecturesAllowed=x86 x64
Compression=lzma2/max
DefaultDirName={%Elevation|c:\Elevation}
MinVersion=0,6.0
SetupLogging=True
UsePreviousAppDir=yes
DisableStartupPrompt=yes
Output=yes
OutputDir=d:\Download
OutputBaseFilename=AdminTExponentaPluginSetup
AppCopyright=Copyright (c) yudenisov 2018-2019
LicenseFile=..\..\..\..\LICENSE.md
RestartIfNeededByRun=False
SetupIconFile=..\..\..\SOURCE-MAIN\Resource\Exponentapic.ico
AppPublisher=New Internet Technologies Inc.
AppPublisherURL=http://anticriminalonline.ru/
AppSupportURL=http://yudenisov.ru/
AppContact=yudenisov@mail.ru
AppSupportPhone=+79047071125
UserInfoPage=True
VersionInfoVersion=0.6.5
VersionInfoCompany=New Internet Technologies Inc.
VersionInfoCopyright=Copyright (c) Yuri A. Denisov, 2018-2019
VersionInfoProductName=AdminT Exponenta Plugin
SolidCompression=True

[Files]
Source: "*.bat"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.chm"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.cmd"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
; Source: "*.dll"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.exe"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
; Source: "*.h"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.inf"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.ini"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.jar"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.lib"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.ps1"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.reg"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.txt"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
Source: "*.url"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.xml"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace
;Source: "*.md"; DestDir: "{app}"; Flags: recursesubdirs uninsremovereadonly uninsrestartdelete restartreplace

[Registry]
Root: "HKLM"; Subkey: "SYSTEM\CurrentControlSet\Control\Session Manager\Environment"; ValueType: string; ValueName: "AdminT"; ValueData: "{app}"; Flags: deletevalue noerror uninsdeletevalue
