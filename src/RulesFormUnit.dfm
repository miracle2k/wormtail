object RulesForm: TRulesForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Rules'
  ClientHeight = 202
  ClientWidth = 155
  Color = clBtnFace
  Constraints.MinHeight = 140
  Constraints.MinWidth = 120
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object RulesList: TVirtualDrawTree
    Left = 0
    Top = 0
    Width = 155
    Height = 202
    Align = alClient
    ClipboardFormats.Strings = (
      'Virtual Tree Data')
    Colors.UnfocusedSelectionColor = clHighlight
    Colors.UnfocusedSelectionBorderColor = clHighlight
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
    OnDblClick = RulesListDblClick
    OnDragAllowed = RulesListDragAllowed
    OnDragOver = RulesListDragOver
    OnDragDrop = RulesListDragDrop
    OnDrawNode = RulesListDrawNode
    OnGetNodeWidth = RulesListGetNodeWidth
    Columns = <>
  end
  object RulesPopup: TSpTBXPopupMenu
    OnPopup = RulesPopupPopup
    Left = 8
    Top = 8
    object RuleEnabledItem: TSpTBXItem
      Caption = 'Enabled'
      AutoCheck = True
      OnClick = RuleEnabledItemClick
    end
    object SpTBXSeparatorItem3: TSpTBXSeparatorItem
    end
    object NewRuleItem: TSpTBXItem
      Caption = 'New Rule'
      ShortCut = 16462
      OnClick = NewRuleItemClick
    end
    object EditRuleItem: TSpTBXItem
      Caption = 'Edit Rule'
      ShortCut = 113
      OnClick = EditRuleItemClick
    end
    object DeleteRuleItem: TSpTBXItem
      Caption = 'Delete Rule'
      ShortCut = 46
      OnClick = DeleteRuleItemClick
    end
    object SpTBXSeparatorItem2: TSpTBXSeparatorItem
    end
    object ReapplyToBufferItem: TSpTBXSubmenuItem
      Caption = 'Reapply To Buffer'
      object ReapplyThisRuleItem: TSpTBXItem
        Caption = 'This Rule'
        OnClick = ReapplyThisRuleItemClick
      end
      object ReapplyAllRulesItem: TSpTBXItem
        Caption = 'All Rules'
        OnClick = ReapplyAllRulesItemClick
      end
    end
    object SpTBXSeparatorItem1: TSpTBXSeparatorItem
    end
    object ClearAllItem: TSpTBXItem
      Caption = 'Clear All Rules'
      OnClick = ClearAllItemClick
    end
  end
end
