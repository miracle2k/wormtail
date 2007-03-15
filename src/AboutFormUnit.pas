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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutForm: TAboutForm;

implementation

uses
  Core;

//const
//  CreditsText = 'Wormtail '+AppnameWithVersion+';

{$R *.dfm}

procedure TAboutForm.FormCreate(Sender: TObject);
begin
  ScrollingCredits.Animate := True;
end;

end.
