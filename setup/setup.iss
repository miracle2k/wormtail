; Needs the Inno Setup Preprocessor, and requires some variables (version stuff etc.)
; to be defined via the command line. We could use some ifdef constructs to make it
; compile without those from the IDE as well, but it's not really needed so far.
;
; Here are the variables that are expected:
;   VersionStrShort   - e.g. 1.5 (major/minor)
;   VersionStrLong    - e.g. 1.5-rc1 (major/minor/ident)
;   VersionStrFull    - e.g. 1.5-rc1.3434 (major/minor/ident/build)


; general constants
#define AppName "Wormtail"
#define AppNameSystem "Wormtail"       ; to be used in startmenu/directory names etc.
#define AppURL "http://www.elsdoerfer.info/wormtail"


[Setup]
AppName={#AppName}
; Don't use version for now, enable way to add this automatically via build process
AppVerName={#AppName} {#VersionStrLong}
AppPublisher=Michael Elsdörfer
AppPublisherURL={#AppURL}
AppSupportURL={#AppURL}
AppUpdatesURL={#AppURL}
DefaultDirName={pf}\{#AppNameSystem}
DefaultGroupName={#AppNameSystem}
; We don't create a submenu, only an icon
DisableProgramGroupPage=yes
AllowNoIcons=yes
OutputBaseFilename={#LowerCase(AppNameSystem)}-setup
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
Root: HKCU; Subkey: "Software\Wormtail"; Flags: uninsdeletekey

[Icons]
Name: "{commonprograms}\{#AppNameSystem}"; Filename: "{app}\wormtail.exe"
Name: "{commondesktop}\{#AppNameSystem}"; Filename: "{app}\wormtail.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\Wormtail.exe"; Description: "{cm:LaunchProgram,{#AppName}}"; Flags: nowait postinstall skipifsilent


