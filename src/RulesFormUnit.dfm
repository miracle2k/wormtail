object RulesForm: TRulesForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Rules'
  ClientHeight = 264
  ClientWidth = 189
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RulesList: TVirtualDrawTree
    Left = 0
    Top = 0
    Width = 189
    Height = 264
    Align = alClient
    ClipboardFormats.Strings = (
      'Virtual Tree Data')
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.MainColumn = -1
    Header.Options = [hoColumnResize, hoDrag]
    PopupMenu = RulesPopup
    TabOrder = 0
    TreeOptions.MiscOptions = [toAcceptOLEDrop, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning, toFullRowDrag]
    TreeOptions.PaintOptions = [toShowDropmark, toShowTreeLines, toThemeAware, toUseBlendedImages]
    TreeOptions.SelectionOptions = [toFullRowSelect, toRightClickSelect]
    OnCollapsing = RulesListCollapsing
    OnDragAllowed = RulesListDragAllowed
    OnDragOver = RulesListDragOver
    OnDragDrop = RulesListDragDrop
    OnDrawNode = RulesListDrawNode
    OnGetNodeWidth = RulesListGetNodeWidth
    Columns = <>
  end
  object RulesPopup: TSpTBXPopupMenu
    Left = 16
    Top = 224
    object SpTBXItem1: TSpTBXItem
      Caption = 'New Rule'
      ShortCut = 16462
      OnClick = SpTBXItem1Click
    end
    object SpTBXItem3: TSpTBXItem
      Caption = 'Edit Rule'
    end
    object SpTBXItem2: TSpTBXItem
      Caption = 'Delete Rule'
      ShortCut = 46
    end
  end
end
