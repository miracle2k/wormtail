object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = 'Wormtail'
  ClientHeight = 434
  ClientWidth = 388
  Color = clBtnFace
  Constraints.MinHeight = 230
  Constraints.MinWidth = 210
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LeftDock: TSpTBXDock
    Left = 0
    Top = 27
    Width = 28
    Height = 407
    LimitToOneRow = True
    Position = dpLeft
    object LeftToolbar: TSpTBXToolbar
      Left = 0
      Top = 0
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      Stretch = True
      TabOrder = 0
      object AlwaysOnTopButton: TSpTBXItem
        Caption = 'Always On Top'
        AutoCheck = True
        OnClick = AlwaysOnTopButtonClick
      end
      object WordWrapItem: TSpTBXItem
        Caption = 'Word Wrap'
        AutoCheck = True
        OnClick = WordWrapItemClick
      end
    end
  end
  object TopDock: TTBXDock
    Left = 0
    Top = 0
    Width = 388
    Height = 27
    object StatusToolbar: TSpTBXToolbar
      Left = 0
      Top = 0
      Caption = 'StatusToolbar'
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      DragHandleStyle = dhNone
      ShrinkMode = tbsmNone
      Stretch = True
      TabOrder = 0
      object SpTBXEditItem2: TSpTBXEditItem
        EditWidth = 140
        OnChange = SpTBXEditItem2Change
      end
      object SpTBXSeparatorItem1: TSpTBXSeparatorItem
        Blank = True
      end
      object StatusLabel: TSpTBXLabelItem
        Caption = '%VARIABLE%'
      end
      object SpTBXRightAlignSpacerItem1: TSpTBXRightAlignSpacerItem
        CustomWidth = 117
      end
      object CloseButton: TSpTBXItem
        Caption = 'Close'
        OnClick = CloseButtonClick
      end
    end
  end
  object LogView: TScintilla
    Left = 28
    Top = 27
    Width = 360
    Height = 407
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = LogViewPopup
    Align = alClient
    EOLStyle = eolCRLF
    Indentation = [TabIndents]
    IndentWidth = 0
    MarginLeft = 1
    MarginRight = 1
    CodePage = cpUTF8
    Caret.ForeColor = clBlack
    Caret.LineBackColor = clYellow
    Caret.LineVisible = True
    Caret.Width = 1
    Caret.Period = 500
    Caret.LineBackAlpha = 256
    DivOptions.ViewWSpace = sciWsInvisible
    DivOptions.UsePalette = False
    DivOptions.OverType = False
    DivOptions.ViewEOL = False
    DivOptions.EndAtLastLine = True
    DivOptions.ScrollBarH = True
    DivOptions.ScrollBarV = True
    ActiveHotSpot.BackColor = clDefault
    ActiveHotSpot.ForeColor = clBlue
    ActiveHotSpot.Underlined = True
    ActiveHotSpot.SingleLine = False
    Colors.SelFore = clHighlightText
    Colors.SelBack = clHighlight
    Colors.MarkerFore = clBlue
    Colors.MarkerBack = clAqua
    Colors.FoldHi = clBtnFace
    Colors.FoldLo = clBtnFace
    Colors.WhiteSpaceFore = clDefault
    Colors.WhiteSpaceBack = clDefault
    Bookmark.BackColor = clDefault
    Bookmark.ForeColor = clDefault
    Bookmark.MarkerType = sciMCircle
    Gutter0.Width = 30
    Gutter0.MarginType = gutLineNumber
    Gutter0.Sensitive = True
    Gutter1.Width = 0
    Gutter1.MarginType = gutSymbol
    Gutter1.Sensitive = False
    Gutter2.Width = 0
    Gutter2.MarginType = gutSymbol
    Gutter2.Sensitive = False
    Gutter3.Width = 0
    Gutter3.MarginType = gutSymbol
    Gutter3.Sensitive = False
    Gutter4.Width = 0
    Gutter4.MarginType = gutSymbol
    Gutter4.Sensitive = False
    WordWrapVisualFlags = []
    WordWrapVisualFlagsLocation = []
    LayoutCache = sciCacheCaret
    HideSelect = False
    WordWrap = sciNoWrap
    EdgeColor = clSilver
    WordChars = '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    ControlCharSymbol = #0
    Folding = [foldCompact, foldComment, foldPreprocessor, foldAtElse, foldHTML, foldHTMLPreProcessor]
    FoldMarkers.MarkerType = sciMarkBox
    FoldMarkers.FoldOpen.BackColor = clDefault
    FoldMarkers.FoldOpen.ForeColor = clDefault
    FoldMarkers.FoldOpen.MarkerType = sciMBoxMinus
    FoldMarkers.FoldClosed.BackColor = clDefault
    FoldMarkers.FoldClosed.ForeColor = clDefault
    FoldMarkers.FoldClosed.MarkerType = sciMBoxPlus
    FoldMarkers.FoldSub.BackColor = clDefault
    FoldMarkers.FoldSub.ForeColor = clDefault
    FoldMarkers.FoldSub.MarkerType = sciMVLine
    FoldMarkers.FoldTail.BackColor = clDefault
    FoldMarkers.FoldTail.ForeColor = clDefault
    FoldMarkers.FoldTail.MarkerType = sciMLCorner
    FoldMarkers.FoldEnd.BackColor = clDefault
    FoldMarkers.FoldEnd.ForeColor = clDefault
    FoldMarkers.FoldEnd.MarkerType = sciMBoxPlusConnected
    FoldMarkers.FoldOpenMid.BackColor = clDefault
    FoldMarkers.FoldOpenMid.ForeColor = clDefault
    FoldMarkers.FoldOpenMid.MarkerType = sciMBoxMinusConnected
    FoldMarkers.FoldMidTail.BackColor = clDefault
    FoldMarkers.FoldMidTail.ForeColor = clDefault
    FoldMarkers.FoldMidTail.MarkerType = sciMTCorner
    LanguageManager.LanguageList = <
      item
        Name = 'null'
        Lexer = 'null'
        Styles = <>
        Keywords = <>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end>
    LanguageManager.SelectedLanguage = 'null'
    FoldDrawFlags = [sciBelowIfNotExpanded]
    KeyCommands = <
      item
        Command = 2300
        ShortCut = 40
      end
      item
        Command = 2301
        ShortCut = 8232
      end
      item
        Command = 2342
        ShortCut = 16424
      end
      item
        Command = 2426
        ShortCut = 41000
      end
      item
        Command = 2302
        ShortCut = 38
      end
      item
        Command = 2303
        ShortCut = 8230
      end
      item
        Command = 2343
        ShortCut = 16422
      end
      item
        Command = 2427
        ShortCut = 40998
      end
      item
        Command = 2415
        ShortCut = 49190
      end
      item
        Command = 2416
        ShortCut = 57382
      end
      item
        Command = 2413
        ShortCut = 49192
      end
      item
        Command = 2414
        ShortCut = 57384
      end
      item
        Command = 2304
        ShortCut = 37
      end
      item
        Command = 2305
        ShortCut = 8229
      end
      item
        Command = 2308
        ShortCut = 16421
      end
      item
        Command = 2309
        ShortCut = 24613
      end
      item
        Command = 2428
        ShortCut = 40997
      end
      item
        Command = 2306
        ShortCut = 39
      end
      item
        Command = 2307
        ShortCut = 8231
      end
      item
        Command = 2310
        ShortCut = 16423
      end
      item
        Command = 2311
        ShortCut = 24615
      end
      item
        Command = 2429
        ShortCut = 40999
      end
      item
        Command = 2390
        ShortCut = 49189
      end
      item
        Command = 2391
        ShortCut = 57381
      end
      item
        Command = 2392
        ShortCut = 49191
      end
      item
        Command = 2393
        ShortCut = 57383
      end
      item
        Command = 2331
        ShortCut = 36
      end
      item
        Command = 2332
        ShortCut = 8228
      end
      item
        Command = 2431
        ShortCut = 40996
      end
      item
        Command = 2316
        ShortCut = 16420
      end
      item
        Command = 2317
        ShortCut = 24612
      end
      item
        Command = 2345
        ShortCut = 32804
      end
      item
        Command = 2314
        ShortCut = 35
      end
      item
        Command = 2315
        ShortCut = 8227
      end
      item
        Command = 2318
        ShortCut = 16419
      end
      item
        Command = 2319
        ShortCut = 24611
      end
      item
        Command = 2347
        ShortCut = 32803
      end
      item
        Command = 2432
        ShortCut = 40995
      end
      item
        Command = 2320
        ShortCut = 33
      end
      item
        Command = 2321
        ShortCut = 8225
      end
      item
        Command = 2433
        ShortCut = 40993
      end
      item
        Command = 2322
        ShortCut = 34
      end
      item
        Command = 2323
        ShortCut = 8226
      end
      item
        Command = 2434
        ShortCut = 40994
      end
      item
        Command = 2180
        ShortCut = 46
      end
      item
        Command = 2177
        ShortCut = 8238
      end
      item
        Command = 2336
        ShortCut = 16430
      end
      item
        Command = 2396
        ShortCut = 24622
      end
      item
        Command = 2324
        ShortCut = 45
      end
      item
        Command = 2179
        ShortCut = 8237
      end
      item
        Command = 2178
        ShortCut = 16429
      end
      item
        Command = 2325
        ShortCut = 27
      end
      item
        Command = 2326
        ShortCut = 8
      end
      item
        Command = 2326
        ShortCut = 8200
      end
      item
        Command = 2335
        ShortCut = 16392
      end
      item
        Command = 2176
        ShortCut = 32776
      end
      item
        Command = 2395
        ShortCut = 24584
      end
      item
        Command = 2176
        ShortCut = 16474
      end
      item
        Command = 2011
        ShortCut = 16473
      end
      item
        Command = 2177
        ShortCut = 16472
      end
      item
        Command = 2178
        ShortCut = 16451
      end
      item
        Command = 2179
        ShortCut = 16470
      end
      item
        Command = 2013
        ShortCut = 16449
      end
      item
        Command = 2327
        ShortCut = 9
      end
      item
        Command = 2328
        ShortCut = 8201
      end
      item
        Command = 2329
        ShortCut = 13
      end
      item
        Command = 2329
        ShortCut = 8205
      end
      item
        Command = 2333
        ShortCut = 16491
      end
      item
        Command = 2334
        ShortCut = 16493
      end
      item
        Command = 2373
        ShortCut = 16495
      end
      item
        Command = 2337
        ShortCut = 16460
      end
      item
        Command = 2338
        ShortCut = 24652
      end
      item
        Command = 2455
        ShortCut = 24660
      end
      item
        Command = 2339
        ShortCut = 16468
      end
      item
        Command = 2469
        ShortCut = 16452
      end
      item
        Command = 2340
        ShortCut = 16469
      end
      item
        Command = 2341
        ShortCut = 24661
      end>
    ExplicitLeft = 72
    ExplicitTop = 80
    ExplicitWidth = 185
    ExplicitHeight = 89
  end
  object ExplorerTree: TVirtualExplorerTreeview
    Left = 28
    Top = 27
    Width = 360
    Height = 407
    Active = False
    Align = alClient
    ColumnDetails = cdUser
    DefaultNodeHeight = 17
    DragHeight = 250
    DragWidth = 150
    FileObjects = [foFolders, foNonFolders, foHidden]
    FileSizeFormat = fsfExplorer
    FileSort = fsFileType
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    Header.MainColumn = -1
    Header.Options = [hoColumnResize, hoDrag]
    HintMode = hmHint
    ParentColor = False
    RootFolder = rfDesktop
    TabOrder = 3
    TabStop = True
    TreeOptions.AutoOptions = [toAutoScroll]
    TreeOptions.MiscOptions = [toAcceptOLEDrop, toEditable, toToggleOnDblClick]
    TreeOptions.PaintOptions = [toShowButtons, toShowTreeLines, toUseBlendedImages, toGhostedIfUnfocused]
    TreeOptions.SelectionOptions = [toLevelSelectConstraint]
    TreeOptions.VETShellOptions = [toContextMenus]
    TreeOptions.VETSyncOptions = [toCollapseTargetFirst, toExpandTarget, toSelectTarget]
    TreeOptions.VETMiscOptions = [toBrowseExecuteFolder, toBrowseExecuteFolderShortcut, toBrowseExecuteZipFolder, toChangeNotifierThread, toRemoveContextMenuShortCut]
    TreeOptions.VETImageOptions = [toImages, toThreadedImages, toMarkCutAndCopy]
    Visible = False
    ExplicitLeft = 112
    ExplicitTop = 64
    ExplicitWidth = 200
    ExplicitHeight = 100
    Columns = <>
  end
  object XPManifest: TXPManifest
    Left = 40
    Top = 40
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 40
    Top = 72
  end
  object LogViewPopup: TSpTBXPopupMenu
    Left = 40
    Top = 104
    object SpTBXItem2: TSpTBXItem
      Caption = 'Font'
      OnClick = SpTBXItem2Click
    end
  end
end
