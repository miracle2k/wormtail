unit RulePropertiesFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, JvOfficeColorPanel, FormValidation, JvComponentBase,
  JvBalloonHint;

type
  TRulePropertiesForm = class(TForm)
    TntLabel1: TTntLabel;
    RegexEdit: TTntEdit;
    InverseCheckbox: TTntCheckBox;
    TntLabel2: TTntLabel;
    HighlightColorPicker: TJvOfficeColorPanel;
    BottomPanel: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    TntButton1: TTntButton;
    TntButton2: TTntButton;
    BalloonHint: TJvBalloonHint;
    procedure FormCreate(Sender: TObject);
    procedure TntButton2Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FValidator: TFormValidator;
  protected
    function ValidateRegexProc(Sender: TFormValidator; Rule: TValidationRule;
      Value: string): Boolean; virtual;
  end;

var
  RulePropertiesForm: TRulePropertiesForm;

implementation

uses
  GnuGetText, VistaCompat, PerlRegEx, MainFormUnit;

{$R *.dfm}

procedure TRulePropertiesForm.FormCreate(Sender: TObject);
begin
  // Use font setting of os (mainly intended for new vista font)
  SetDesktopIconFonts(Self.Font);

  // Localize
  TranslateComponent(Self);

  // Create objects
  FValidator := TFormValidator.Create;
  FValidator.AddRule(RegexEdit, ValidateRegexProc);

  // Init components
  HighlightColorPicker.SelectedColor := MainForm.DefaultHighlightColor;
end;

procedure TRulePropertiesForm.FormDestroy(Sender: TObject);
begin
  FValidator.Free;
end;

procedure TRulePropertiesForm.TntButton2Click(Sender: TObject);
begin
  if FValidator.ValidateAll then
    ModalResult := mrOk
  else
  begin
    with FValidator.FirstFailedRule do
      BalloonHint.ActivateHint(FValidator.FirstFailedRule.Control,
        FValidator.FirstFailedRule.Message, ikError, _('Error'));
  end;
end;

function TRulePropertiesForm.ValidateRegexProc(Sender: TFormValidator;
  Rule: TValidationRule; Value: string): Boolean;
var
  RegEx: TPerlRegEx;
begin
  // Make sure we have text
  if (Value = '') then begin
    Result := False;
    Rule.Message := _('Please provide a regular expression');
  end
  else
  begin
    RegEx := TPerlRegEx.Create(Self);
    try
      RegEx.RegEx := RegexEdit.Text;
      try
        RegEx.Compile;
        Result := True;
      except
        on E: Exception do
        begin
          Result := False;
          Rule.Message := Format(_('The regular expression is invalid: %s'), [E.Message]);
        end;
      end;
    finally
      RegEx.Free;
    end;
  end;
end;

end.
