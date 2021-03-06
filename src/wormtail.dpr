program wormtail;

{$R 'wormtail.res' 'wormtail.rc'}

uses
  ExceptionLog,
  GnuGetText,
  EurekaLogGetText,
  Graphics,
  Forms,
  MainFormUnit in 'MainFormUnit.pas' {MainForm},
  Core in 'Core.pas',
  AboutFormUnit in 'AboutFormUnit.pas' {AboutForm},
  VersionInfo in 'VersionInfo.pas',
  VistaCompat in 'VistaCompat.pas',
  RulesFormUnit in 'RulesFormUnit.pas' {RulesForm},
  RulePropertiesFormUnit in 'RulePropertiesFormUnit.pas' {RulePropertiesForm},
  Configuration in 'Configuration.pas';

// Define this on compilers < delphi 2007 to make the app run smoothly on vista 
//{$DEFINE VISTA_FIXES}   

begin
  // Exclude some stuff from translation
  TP_GlobalIgnoreClass(TFont);
  // Localize EurekaLog Messages
  GetTextTranslateEurekaLog();

  Application.Initialize;
  Application.Title := AppName;
  {$IFNDEF VISTA_FIXES}
  Application.MainFormOnTaskBar := True;
 	{$ENDIF}
  Application.CreateForm(TMainForm, MainForm);
  Application.Run;
end.
