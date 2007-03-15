object AboutForm: TAboutForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 259
  ClientWidth = 297
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollingCredits: TScrollingCredits
    AlignWithMargins = True
    Left = 10
    Top = 10
    Width = 277
    Height = 211
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Credits.Strings = (
      '&b&uWormtail'
      ''
      '2007 by Michael Elsd'#246'rfer '
      '<michael@elsdoerfer.info>'
      ''
      ''
      ''
      '&bBuilt in Delphi'
      ''
      ''
      ''
      '&b&uComponents && Libraries'
      ''
      'Toolbar2000, TBX, SpTBX, mbTBX'
      'TntWare Unicode Controls'
      'VirtualTreeView'
      'VirtualShellTools'
      'JCL/JVCL'
      'PngDelphi'
      'RemObjects Pascal Script'
      'EurekaLog'
      ''
      ''
      ''
      '&b&uApplication Toolbar Icons'
      ''
      'iconaholic.com'
      ''
      ''
      ''
      '&b&uShoutouts'
      ''
      'FinalBuilder'
      'InnoSetup'
      'SmartInspect'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '&iPointless act! You don'#39't give a 500 dollar tip '
      '&ito the housekeeper!  That'#39's inappropriate! '
      '&iThat'#39's inexcusable! That, I don'#39't forgive! &iWhat '
      '&iwere you thinking? What were you thinking?')
    CreditsFont.Charset = DEFAULT_CHARSET
    CreditsFont.Color = clBlack
    CreditsFont.Height = -11
    CreditsFont.Name = 'Tahoma'
    CreditsFont.Style = []
    BackgroundColor = clWhite
    BorderColor = clBlack
    Animate = False
    Interval = 50
    ShowBorder = True
    Align = alClient
    ExplicitLeft = 5
    ExplicitTop = -14
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 224
    Width = 297
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    ExplicitTop = 285
    ExplicitWidth = 299
    object OKButton: TButton
      Left = 212
      Top = 3
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
    end
  end
end
