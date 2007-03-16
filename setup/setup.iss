[Setup]
AppName=Wormtail
; Don't use version for now, enable way to add this automatically via build process
AppVerName=Wormtail
AppPublisher=Michael Elsdörfer
AppPublisherURL=http://www.elsdoerfer.info/wormtail
AppSupportURL=http://www.elsdoerfer.info/wormtail
AppUpdatesURL=http://www.elsdoerfer.info/wormtail
DefaultDirName={pf}\Wormtail
DefaultGroupName=Wormtail
; We don't create a submenu, only an icon
DisableProgramGroupPage=yes
AllowNoIcons=yes
OutputBaseFilename=wormtail-setup
; relative to SourceDir
OutputDir=..\
Compression=lzma/max
SolidCompression=yes
SourceDir=..\build\output\

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs

[Registry]
; create empty registry key, but do not write any values. we do this only so that
; the uninstaller will the delete the key (and all it's values), as our app
; stores some data in the registry.
; Root: HKCU; Subkey: "Software\Wormtail"; Flags: uninsdeletekey

[Icons]
Name: "{commonprograms}\Patronus"; Filename: "{app}\Wormtail.exe"
Name: "{commondesktop}\Patronus"; Filename: "{app}\Wormtail.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Wormtail.exe"; Description: "{cm:LaunchProgram,Patronus}"; Flags: nowait postinstall skipifsilent

