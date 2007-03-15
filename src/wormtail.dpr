program wormtail;

{$R 'wormtail.res' 'wormtail.rc'}

uses
  ExceptionLog,
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  Core in 'Core.pas',
  AboutFormUnit in 'AboutFormUnit.pas' {AboutForm};

begin
  Application.Initialize;
  Application.Title := AppName;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
