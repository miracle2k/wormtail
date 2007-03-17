program wormtail;

{$R 'wormtail.res' 'wormtail.rc'}

// vista compat
//    minimize to tray + animate on update
// manual highlight item: preselected color is always last used instead of current one
// change font screws with multiline / line height
// multiline improvements
// store settings in registry

uses
  ExceptionLog,
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  Core in 'Core.pas',
  AboutFormUnit in 'AboutFormUnit.pas' {AboutForm},
  VersionInfo in 'VersionInfo.pas',
  VistaCompat in 'VistaCompat.pas';

begin
  Application.Initialize;
  Application.Title := AppName;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
