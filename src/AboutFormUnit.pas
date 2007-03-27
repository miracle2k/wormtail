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
    Panel1: TPanel;
    WebsiteLink: TLabel;
    VersionLabel: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure WebsiteLinkClick(Sender: TObject);
    procedure WebsiteLinkMouseEnter(Sender: TObject);
    procedure WebsiteLinkMouseLeave(Sender: TObject);
  end;

var
  AboutForm: TAboutForm;

implementation

uses
  Core, VistaCompat, GnuGetText, ShellApi;

const
  CreditsString =
'&b&uWormtail'#13#10+
'Version %VERSION%'#13#10+
''#13#10+
'2007 by Michael Elsd'#246'rfer'#13#10+
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
'&iIn no particular order'#13#10+
''#13#10+
'&bToolbar2000'#13#10+
'By Jordan Russell'#13#10+
'&ijrsoftware.org'#13#10+
''#13#10+
'&bTBX'#13#10+
'By Alex A. Denisov'#13#10+
'&ig32.org/tbx'#13#10+
''#13#10+
'&bSpTBX'#13#10+
'By Robert Lee'#13#10+
'Licensed under MPL'#13#10+
'&iclub.telepolis.com/silverpointdev'#13#10+
''#13#10+
'&bmbTBX'#13#10+
'By Marco Binic'#13#10+
'&imxs.bergsoft.net'#13#10+
''#13#10+
'&bTntWare Unicode Controls'#13#10+
'By Troy Wolbrink'#13#10+
'&itntware.com'#13#10+
''#13#10+
'&bVirtualTreeView'#13#10+
'By Mike Lischke and contributors'#13#10+
'Licensed under MPL'#13#10+
'&idelphi-gems.com'#13#10+
''#13#10+
'&bVirtualShellTools'#13#10+
'By Jim Kueneman'#13#10+
'Licensed under MPL'#13#10+
'&imustangpeak.net'#13#10+
''#13#10+
'&bJCL/JVCL'#13#10+
'Licensed under MPL'#13#10+
'&idelphi-jedi.org'#13#10+
''#13#10+
'&bPngComponents'#13#10+
'By Martijn Saly'#13#10+
'&ithany.org'#13#10+
''#13#10+
'&bpngdelphi'#13#10+
'By Gustavo Daud'#13#10+
'&ipngdelphi.sourceforge.net'#13#10+
''#13#10+
'&bEurekaLog'#13#10+
'By Fabio Dell''Aria'#13#10+
'&ieurekalog.com'#13#10+
''#13#10+
'&bTPerlRegEx'#13#10+
'By Jan Goyvaerts'#13#10+
'&iregular-expressions.info'#13#10+
''#13#10+
'&bTMS TaskDialog'#13#10+
'By TMS Software'#13#10+
'&itmssoftware.com'#13#10+
''#13#10+
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
'&iOther great software used'#13#10+
'&iduring this production'#13#10+
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
  WebsiteLink.Caption := 'elsdoerfer.info/wormtail';

  // Init other gui stuff
  Self.Caption := Format(_('About %s'), [Appname]);
  VersionLabel.Caption := Format(_('Version %s'), [AppVersion]);

  // Start rolling!
  ScrollingCredits.Animate := True;
end;

procedure TAboutForm.WebsiteLinkClick(Sender: TObject);
begin
  ShellExecute(Application.Handle, '', AppWebsiteUrl, '', '', SW_SHOWNORMAL);
end;

procedure TAboutForm.WebsiteLinkMouseEnter(Sender: TObject);
begin
  with WebsiteLink.Font do Style := Style + [fsUnderline];
end;

procedure TAboutForm.WebsiteLinkMouseLeave(Sender: TObject);
begin
  with WebsiteLink.Font do Style := Style - [fsUnderline];
end;

end.
