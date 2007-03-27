object AboutForm: TAboutForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'About'
  ClientHeight = 304
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
    Top = 56
    Width = 277
    Height = 210
    Margins.Left = 10
    Margins.Top = 10
    Margins.Right = 10
    Credits.Strings = (
      '')
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
    ExplicitTop = 22
    ExplicitWidth = 278
    ExplicitHeight = 237
  end
  object BottomPanel: TPanel
    Left = 0
    Top = 269
    Width = 297
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = 224
    ExplicitWidth = 298
    DesignSize = (
      297
      35)
    object OKButton: TButton
      Left = 212
      Top = 3
      Width = 75
      Height = 25
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      ExplicitWidth = 76
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 297
    Height = 46
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -1
    ExplicitWidth = 298
    object WebsiteLink: TLabel
      Left = 182
      Top = 31
      Width = 105
      Height = 13
      Cursor = crHandPoint
      Alignment = taRightJustify
      Caption = '%DYNAMICTEXT%'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = WebsiteLinkClick
      OnMouseEnter = WebsiteLinkMouseEnter
      OnMouseLeave = WebsiteLinkMouseLeave
    end
    object VersionLabel: TLabel
      Left = 195
      Top = 12
      Width = 92
      Height = 13
      Alignment = taRightJustify
      Caption = '%DYNAMICTEXT%'
    end
  end
end
