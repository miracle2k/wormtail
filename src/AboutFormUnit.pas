unit AboutFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Credits, ExtCtrls, TBXDkPanels, SpTBXControls, StdCtrls;

type
  TAboutForm = class(TForm)
    ScrollingCredits: TScrollingCredits;
    BottomPanel: TPanel;
    OKButton: TButton;
    VersionLabel: TLabel;
    procedure FormCreate(Sender: TObject);
  end;

var
  AboutForm: TAboutForm;

implementation

uses
  Core, VistaCompat, GnuGetText;

const
  CreditsString =
'&b&uWormtail %VERSION%'#13#10+
''#13#10+
'2007 by Michael Elsd'#246'rfer '#13#10+
'<michael@elsdoerfer.info>'#13#10+
''#13#10+
''#13#10+
''#13#10+
'&bBuilt in Delphi'#13#10+
''#13#10+
''#13#10+
''#13#10+
'&b&uComponents && Libraries'#13#10+
''#13#10+
'Toolbar2000, TBX, SpTBX, mbTBX'#13#10+
'TntWare Unicode Controls'#13#10+
'VirtualTreeView'#13#10+
'VirtualShellTools'#13#10+
'JCL/JVCL'#13#10+
'PngDelphi'#13#10+
'RemObjects Pascal Script'#13#10+
'EurekaLog'#13#10+
'TPerlRegEx'#13#10+
''#13#10+
''#13#10+
''#13#10+
'&b&uApplication Toolbar Icons'#13#10+
''#13#10+
'iconaholic.com'#13#10+
''#13#10+
''#13#10+
''#13#10+
'&b&uShoutouts'#13#10+
''#13#10+
'FinalBuilder'#13#10+
'InnoSetup'#13#10+
'SmartInspect'#13#10+
''#13#10+
''#13#10+
''#13#10+
''#13#10+
''#13#10+
''#13#10+
''#13#10+
''#13#10+
'&iPointless act! You don'#39't give a 500 dollar tip '#13#10+
'&ito the housekeeper!  That'#39's inappropriate! '#13#10+
'&iThat'#39's inexcusable! That, I don'#39't forgive! &iWhat '#13#10+
'&iwere you thinking? What were you thinking?';

//const
//  CreditsText = 'Wormtail '+AppnameWithVersion+';

{$R *.dfm}

procedure TAboutForm.FormCreate(Sender: TObject);
var
  C: string;
begin
  // Localize
  TranslateComponent(Self);

  // Vista fonts
  SetDesktopIconFonts(Self.Font);
  SetDesktopIconFonts(ScrollingCredits.CreditsFont);  

  // Prepare credits string (replace version number etc)
  C := CreditsString;
  C := StringReplace(C, '%VERSION%', AppVersion, [rfIgnoreCase, rfReplaceAll]);
  ScrollingCredits.Credits.Text := C;

  // Show current version on label
  VersionLabel.Caption := AppVersion;

  // Start rolling!
  ScrollingCredits.Animate := True;
end;

end.
