program wormtail;

{$R 'wormtail.res' 'wormtail.rc'}

uses
  ExceptionLog,
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  Core in 'Core.pas';

begin
  Application.Initialize;
  Application.Title := AppName;
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
