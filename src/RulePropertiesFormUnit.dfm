object RulePropertiesForm: TRulePropertiesForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Rule Properties'
  ClientHeight = 292
  ClientWidth = 398
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    398
    292)
  PixelsPerInch = 96
  TextHeight = 13
  object TntLabel1: TTntLabel
    Left = 26
    Top = 16
    Width = 96
    Height = 13
    Alignment = taRightJustify
    Caption = 'Regular Expression:'
  end
  object TntLabel2: TTntLabel
    Left = 93
    Top = 80
    Width = 29
    Height = 13
    Alignment = taRightJustify
    Caption = 'Color:'
  end
  object Bevel1: TBevel
    Left = 152
    Top = 136
    Width = 50
    Height = 50
  end
  object RegexEdit: TTntEdit
    Left = 128
    Top = 13
    Width = 259
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 0
  end
  object InverseCheckbox: TTntCheckBox
    Left = 128
    Top = 40
    Width = 137
    Height = 17
    Caption = 'Inverse'
    TabOrder = 1
  end
  object HighlightColorPicker: TJvOfficeColorPanel
    Left = 128
    Top = 77
    Width = 152
    Height = 162
    BevelOuter = bvNone
    FlatBorder = True
    SelectedColor = clNone
    HotTrackFont.Charset = DEFAULT_CHARSET
    HotTrackFont.Color = clWindowText
    HotTrackFont.Height = -11
    HotTrackFont.Name = 'Tahoma'
    HotTrackFont.Style = []
    TabOrder = 2
    Properties.ShowNoneColor = True
    Properties.ShowDefaultColor = False
    Properties.NoneColorCaption = 'Don'#39't Highlight'
    Properties.DefaultColorCaption = 'Don'#39't Highlight'
    Properties.CustomColorCaption = 'Other Colors...'
    Properties.NoneColorHint = 'Don'#39't Highlight'
    Properties.DefaultColorHint = 'Don'#39't Highlight'
    Properties.CustomColorHint = 'Other Colors...'
    Properties.NoneColorFont.Charset = DEFAULT_CHARSET
    Properties.NoneColorFont.Color = clWindowText
    Properties.NoneColorFont.Height = -11
    Properties.NoneColorFont.Name = 'Tahoma'
    Properties.NoneColorFont.Style = []
    Properties.DefaultColorFont.Charset = DEFAULT_CHARSET
    Properties.DefaultColorFont.Color = clWindowText
    Properties.DefaultColorFont.Height = -11
    Properties.DefaultColorFont.Name = 'Tahoma'
    Properties.DefaultColorFont.Style = []
    Properties.CustomColorFont.Charset = DEFAULT_CHARSET
    Properties.CustomColorFont.Color = clWindowText
    Properties.CustomColorFont.Height = -11
    Properties.CustomColorFont.Name = 'Tahoma'
    Properties.CustomColorFont.Style = []
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 251
    Width = 398
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 3
    ExplicitLeft = 72
    ExplicitTop = 240
    ExplicitWidth = 185
    object Bevel2: TBevel
      Left = 0
      Top = 0
      Width = 398
      Height = 50
      Align = alTop
      Shape = bsTopLine
      Style = bsRaised
      ExplicitLeft = 264
      ExplicitTop = 8
      ExplicitWidth = 50
    end
    object TntButton1: TTntButton
      Left = 312
      Top = 8
      Width = 75
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object TntButton2: TTntButton
      Left = 231
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      Default = True
      TabOrder = 1
      OnClick = TntButton2Click
    end
  end
  object BalloonHint: TJvBalloonHint
    Left = 24
    Top = 56
  end
end
