program wormtail;

{$R 'wormtail.res' 'wormtail.rc'}

// TODO: change font screws with multiline / line height
// TODO: multiline improvements
// TODO: store settings in registry
// TODO: selection in lsitviews is hardly readable if window deactivated
// TODO: when opening a file, add a couple of lines "prefilled"
// TODO: .log and file association registration

uses
  ExceptionLog,
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  Core in 'Core.pas',
  AboutFormUnit in 'AboutFormUnit.pas' {AboutForm},
  VersionInfo in 'VersionInfo.pas',
  VistaCompat in 'VistaCompat.pas',
  RulesFormUnit in 'RulesFormUnit.pas' {RulesForm},
  RulePropertiesFormUnit in 'RulePropertiesFormUnit.pas' {RulePropertiesForm};

begin
  Application.Initialize;
  Application.Title := AppName;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
