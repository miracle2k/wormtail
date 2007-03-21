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
    function GetHighlightColor: TColor;
    procedure SetHighlightColor(const Value: TColor);
  protected
    function ValidateRegexProc(Sender: TFormValidator; Rule: TValidationRule;
      Value: string): Boolean; virtual;
  public
    property HighlightColor: TColor read GetHighlightColor write SetHighlightColor;
  end;

var
  RulePropertiesForm: TRulePropertiesForm;

implementation

uses
  GnuGetText, JvSpeedButton,
  VistaCompat, PerlRegEx, MainFormUnit;

// to work around some jvcl bugs, we need protected access
type
  TJvOfficeColorPanelHack = class(TJvCustomOfficeColorPanel);

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
end;

procedure TRulePropertiesForm.FormDestroy(Sender: TObject);
begin
  FValidator.Free;
end;

function TRulePropertiesForm.GetHighlightColor: TColor;
begin
  Result := HighlightColorPicker.SelectedColor;
end;

procedure TRulePropertiesForm.SetHighlightColor(const Value: TColor);
var
  I: Integer;
  Found: Boolean;
  WorkValue: TColor;
begin
  // control is unable to pick custom colors up correctly, so help it out;
  // this is still not a 100% correct - if you call this function multiple times
  // for one instance, two buttons will be selected. we work around that by
  // always making sure that this is only called once. That also means we cannot
  // pre-initialize a color. The caller of this form either has to set one - or
  // set a default according to his wishes.

  WorkValue := Value;

  // set color WorkValue
  HighlightColorPicker.SelectedColor := WorkValue;

  // apply manual fixes
  with TJvOfficeColorPanelHack(HighlightColorPicker) do
  begin
    // search for a color button to select
    Found := False;
    if Properties.ShowStandardColors then
      for I := 0 to StandardColorDrawers.Count - 1 do
      begin
        TJvSpeedButton(StandardColorDrawers[I]).Down :=
          TJvColorSpeedButton(StandardColorDrawers[I]).DrawColor = WorkValue;
        if (TJvSpeedButton(StandardColorDrawers[I]).Down) then
          Found := True;
      end;
    if Properties.ShowSystemColors then
      for I := 0 to SystemColorDrawers.Count - 1 do
      begin
        TJvSpeedButton(SystemColorDrawers[I]).Down :=
          TJvColorSpeedButton(SystemColorDrawers[I]).DrawColor = WorkValue;
        if (TJvSpeedButton(SystemColorDrawers[I]).Down) then
          Found := True;
      end;
    if Properties.ShowUserColors then
      for I := 0 to UserColorDrawers.Count - 1 do
      begin
        TJvSpeedButton(UserColorDrawers[I]).Down :=
          TJvColorSpeedButton(UserColorDrawers[I]).DrawColor = WorkValue;
        if (TJvSpeedButton(UserColorDrawers[I]).Down) then
          Found := True;
      end;

    // no color?
    if HighlightColorPicker.Properties.NoneColorColor = WorkValue then
    begin
      ButtonNoneColor.Down := True;
      Found := True;
    end;

    // no color found? apply manual color
    if not Found then
    begin
      CustomColorDrawer.Down := True;
      // IMPORTANT: if this property is not available in the JVCL, add it
      // yourself as a protected property, accessing FCustomColorDrawer.
      CustomColorDrawer.DrawColor := WorkValue;
    end;
  end;
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
