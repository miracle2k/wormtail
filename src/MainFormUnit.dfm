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
    Width = 27
    Height = 407
    LimitToOneRow = True
    Position = dpLeft
    object LeftToolbar: TSpTBXToolbar
      Left = 0
      Top = 0
      DockMode = dmCannotFloatOrChangeDocks
      DragHandleStyle = dhNone
      FullSize = True
      Images = SmallImages
      ShrinkMode = tbsmNone
      Stretch = True
      TabOrder = 0
      object AlwaysOnTopButton: TSpTBXItem
        Caption = 'Always On Top'
        AutoCheck = True
        ImageIndex = 2
        OnClick = AlwaysOnTopButtonClick
      end
      object WordWrapItem: TSpTBXItem
        Caption = 'Word Wrap'
        AutoCheck = True
        ImageIndex = 0
        OnClick = WordWrapItemClick
      end
      object SpTBXRightAlignSpacerItem2: TSpTBXRightAlignSpacerItem
        CustomWidth = 331
      end
      object SpTBXItem3: TSpTBXItem
        Caption = 'About'
        ImageIndex = 8
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
      DockMode = dmCannotFloatOrChangeDocks
      DockPos = 0
      DragHandleStyle = dhNone
      Images = SmallImages
      ShrinkMode = tbsmNone
      Stretch = True
      TabOrder = 0
      object OpenFileItem: TSpTBXSubmenuItem
        Caption = 'Open File'
        DisplayMode = nbdmImageAndText
        ImageIndex = 7
        OnClick = OpenFileItemClick
        DropdownCombo = True
        object TBMRUListItem1: TTBMRUListItem
        end
      end
      object FilterEdit: TSpTBXEditItem
        EditWidth = 140
        OnChange = FilterEditChange
      end
      object SpTBXSeparatorItem1: TSpTBXSeparatorItem
        Blank = True
      end
      object StatusLabel: TSpTBXLabelItem
        Caption = '%VARIABLE%'
      end
      object SpTBXRightAlignSpacerItem1: TSpTBXRightAlignSpacerItem
        CustomWidth = 10
      end
      object CloseButton: TSpTBXItem
        Caption = 'Close'
        DisplayMode = nbdmImageAndText
        ImageIndex = 5
        OnClick = CloseButtonClick
      end
    end
  end
  object LogView: TScintilla
    Left = 27
    Top = 27
    Width = 361
    Height = 407
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clSilver
    Font.Height = -20
    Font.Name = 'Courier New'
    Font.Style = []
    PopupMenu = LogViewPopup
    Align = alClient
    BorderStyle = bsNone
    EOLStyle = eolCRLF
    Indentation = [TabIndents]
    IndentWidth = 0
    MarginLeft = 1
    MarginRight = 1
    CodePage = cpUTF8
    Caret.ForeColor = clYellow
    Caret.LineBackColor = 9474192
    Caret.LineVisible = True
    Caret.Width = 3
    Caret.Period = 500
    Caret.LineBackAlpha = 60
    DivOptions.ViewWSpace = sciWsInvisible
    DivOptions.UsePalette = False
    DivOptions.OverType = False
    DivOptions.ViewEOL = False
    DivOptions.EndAtLastLine = True
    DivOptions.ScrollBarH = True
    DivOptions.ScrollBarV = True
    ActiveHotSpot.BackColor = clDefault
    ActiveHotSpot.ForeColor = clAqua
    ActiveHotSpot.Underlined = True
    ActiveHotSpot.SingleLine = True
    Colors.SelFore = clHighlightText
    Colors.SelBack = clHighlight
    Colors.MarkerFore = 26367
    Colors.MarkerBack = 13209
    Colors.FoldHi = clBlack
    Colors.FoldLo = clBlack
    Colors.WhiteSpaceFore = clYellow
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
    EdgeColumn = 200
    EdgeColor = clSilver
    WordChars = '_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    ControlCharSymbol = #0
    Folding = [foldCompact, foldComment, foldPreprocessor, foldAtElse, foldHTML, foldHTMLPreProcessor]
    FoldMarkers.MarkerType = sciMarkCustom
    FoldMarkers.FoldOpen.BackColor = clDefault
    FoldMarkers.FoldOpen.ForeColor = clDefault
    FoldMarkers.FoldOpen.MarkerType = sciMArrowDown
    FoldMarkers.FoldClosed.BackColor = clDefault
    FoldMarkers.FoldClosed.ForeColor = clDefault
    FoldMarkers.FoldClosed.MarkerType = sciMArrow
    FoldMarkers.FoldSub.BackColor = clDefault
    FoldMarkers.FoldSub.ForeColor = clDefault
    FoldMarkers.FoldSub.MarkerType = sciMEmpty
    FoldMarkers.FoldTail.BackColor = clDefault
    FoldMarkers.FoldTail.ForeColor = clDefault
    FoldMarkers.FoldTail.MarkerType = sciMEmpty
    FoldMarkers.FoldEnd.BackColor = clDefault
    FoldMarkers.FoldEnd.ForeColor = clDefault
    FoldMarkers.FoldEnd.MarkerType = sciMEmpty
    FoldMarkers.FoldOpenMid.BackColor = clDefault
    FoldMarkers.FoldOpenMid.ForeColor = clDefault
    FoldMarkers.FoldOpenMid.MarkerType = sciMEmpty
    FoldMarkers.FoldMidTail.BackColor = clDefault
    FoldMarkers.FoldMidTail.ForeColor = clDefault
    FoldMarkers.FoldMidTail.MarkerType = sciMEmpty
    LanguageManager.LanguageList = <
      item
        Name = 'null'
        Lexer = 'null'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
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
      end
      item
        Name = 'ADA'
        Lexer = 'ADA'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators (delimiters)'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Character'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'End of line where character is not closed'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'End of line where string is not closed'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Label'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Illegal token'
            StyleNumber = 11
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'abort'
              'abstract'
              'accept'
              'access'
              'aliased'
              'all'
              'array'
              'at'
              'begin'
              'body'
              'case'
              'constant'
              'declare'
              'delay'
              'delta'
              'digits'
              'do'
              'else'
              'elsif'
              'end'
              'entry'
              'exception'
              'exit'
              'for'
              'function'
              'generic'
              'goto'
              'if'
              'in'
              'is'
              'limited'
              'loop'
              'new'
              'null'
              'of'
              'others'
              'out'
              'package'
              'pragma'
              'private'
              'procedure'
              'protected'
              'raise'
              'range'
              'record'
              'renames'
              'requeue'
              'return'
              'reverse'
              'select'
              'separate'
              'subtype'
              'tagged'
              'task'
              'terminate'
              'then'
              'type'
              'until'
              'use'
              'when'
              'while'
              'with'
              'abs'
              'and'
              'mod'
              'not'
              'or'
              'rem'
              'xor')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '--'
        CommentBoxEnd = '--'
        CommentBoxMiddle = '--'
        CommentBlock = '--'
        CommentAtLineStart = True
        CommentStreamStart = '--'
        CommentStreamEnd = '--'
        NumStyleBits = 5
      end
      item
        Name = 'Apache Config'
        Lexer = 'conf'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White Space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Apache Runtime Directive'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 49344
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'extensions (like .gz, .tgz, .html)'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'parameters for Apache Runtime directives'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12566272
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'IP address'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12632064
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 9
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Directives'
            Keywords.Strings = (
              'accessconfig'
              'accessfilename'
              'action'
              'addalt'
              'addaltbyencoding'
              'addaltbytype'
              'addcharset'
              'adddefaultcharset'
              'adddescription'
              'addencoding'
              'addhandler'
              'addicon'
              'addiconbyencoding'
              'addiconbytype'
              'addlanguage'
              'addmodule'
              'addmoduleinfo'
              'addtype'
              'agentlog'
              'alias'
              'aliasmatch'
              'allow'
              'allowconnect'
              'allowoverride'
              'anonymous'
              'anonymous_authoritative'
              'anonymous_logemail'
              'anonymous_mustgiveemail'
              'anonymous_nouserid'
              'anonymous_verifyemail'
              'authauthoritative'
              'authdbauthoritative'
              'authdbgroupfile'
              'authdbmauthoritative'
              'authdbmgroupfile'
              'authdbmgroupfile'
              'authdbuserfile'
              'authdbmuserfile'
              'authdigestfile'
              'authgroupfile'
              'authname'
              'authtype'
              'authuserfile'
              'bindaddress'
              'browsermatch'
              'browsermatchnocase'
              'bs2000account'
              'cachedefaultexpire'
              'cachedirlength'
              'cachedirlevels'
              'cacheforcecompletion'
              'cachegcinterval'
              'cachelastmodifiedfactor'
              'cachemaxexpire'
              'cachenegotiateddocs'
              'cacheroot'
              'cachesize'
              'checkspelling'
              'clearmodulelist'
              'contentdigest'
              'cookieexpires'
              'cookielog'
              'cookielog'
              'cookietracking'
              'coredumpdirectory'
              'customlog'
              'defaulticon'
              'defaultlanguage'
              'defaulttype'
              'define'
              'deny'
              'directory'
              'directorymatch'
              'directoryindex'
              'documentroot'
              'errordocument'
              'errorlog'
              'example'
              'expiresactive'
              'expiresbytype'
              'expiresdefault'
              'extendedstatus'
              'fancyindexing'
              'files'
              'filesmatch'
              'forcetype'
              'group'
              'header'
              'headername'
              'hostnamelookups'
              'identitycheck'
              'ifdefine'
              'ifmodule'
              'imapbase'
              'imapdefault'
              'imapmenu'
              'include'
              'indexignore'
              'indexoptions'
              'keepalive'
              'keepalivetimeout'
              'languagepriority'
              'limit'
              'limitexcept'
              'limitrequestbody'
              'limitrequestfields'
              'limitrequestfieldsize'
              'limitrequestline'
              'listen'
              'listenbacklog'
              'loadfile'
              'loadmodule'
              'location'
              'locationmatch'
              'lockfile'
              'logformat'
              'loglevel'
              'maxclients'
              'maxkeepaliverequests'
              'maxrequestsperchild'
              'maxspareservers'
              'metadir'
              'metafiles'
              'metasuffix'
              'mimemagicfile'
              'minspareservers'
              'mmapfile'
              'namevirtualhost'
              'nocache'
              'options'
              'order'
              'passenv'
              'pidfile'
              'port'
              'proxyblock'
              'proxydomain'
              'proxypass'
              'proxypassreverse'
              'proxyreceivebuffersize'
              'proxyremote'
              'proxyrequests'
              'proxyvia'
              'qsc'
              'readmename'
              'redirect'
              'redirectmatch'
              'redirectpermanent'
              'redirecttemp'
              'refererignore'
              'refererlog'
              'removehandler'
              'require'
              'resourceconfig'
              'rewritebase'
              'rewritecond'
              'rewriteengine'
              'rewritelock'
              'rewritelog'
              'rewriteloglevel'
              'rewritemap'
              'rewriteoptions'
              'rewriterule'
              'rlimitcpu'
              'rlimitmem'
              'rlimitnproc'
              'satisfy'
              'scoreboardfile'
              'script'
              'scriptalias'
              'scriptaliasmatch'
              'scriptinterpretersource'
              'scriptlog'
              'scriptlogbuffer'
              'scriptloglength'
              'sendbuffersize'
              'serveradmin'
              'serveralias'
              'servername'
              'serverpath'
              'serverroot'
              'serversignature'
              'servertokens'
              'servertype'
              'setenv'
              'setenvif'
              'setenvifnocase'
              'sethandler'
              'singlelisten'
              'startservers'
              'threadsperchild'
              'timeout'
              'transferlog'
              'typesconfig'
              'unsetenv'
              'usecanonicalname'
              'user'
              'userdir'
              'virtualhost'
              'virtualdocumentroot'
              'virtualdocumentrootip'
              'virtualscriptalias'
              'virtualscriptaliasip'
              'xbithack'
              'from'
              'all')
          end
          item
            KeywordListNumber = 1
            Name = 'Parameters'
            Keywords.Strings = (
              'on'
              'off'
              'standalone'
              'inetd'
              'force-response-1.0'
              'downgrade-1.0'
              'nokeepalive'
              'indexes'
              'includes'
              'followsymlinks'
              'none'
              'x-compress'
              'x-gzip')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '#'
        CommentStreamEnd = '#'
        NumStyleBits = 5
      end
      item
        Name = 'APDL'
        Lexer = 'apdl'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'CommentBlock'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Word'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Processor'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Command'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SlashCommand'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'StarCommand'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Argument'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Function'
            StyleNumber = 12
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Processors'
          end
          item
            KeywordListNumber = 1
            Name = 'Commands'
          end
          item
            KeywordListNumber = 2
            Name = 'SlashCommands'
          end
          item
            KeywordListNumber = 3
            Name = 'StarCommands'
          end
          item
            KeywordListNumber = 4
            Name = 'Arguments'
          end
          item
            KeywordListNumber = 5
            Name = 'Functions'
          end>
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
      end
      item
        Name = 'ASM'
        Lexer = 'asm'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'CPU Instruction'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Math Instruction'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Register'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Directive'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Directive Operand'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment Block'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Character'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            Name = 'String not terminated'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Extended Instruction'
            StyleNumber = 14
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Processors'
          end
          item
            KeywordListNumber = 1
            Name = 'Commands'
          end
          item
            KeywordListNumber = 2
            Name = 'SlashCommands'
          end
          item
            KeywordListNumber = 3
            Name = 'StarCommands'
          end
          item
            KeywordListNumber = 4
            Name = 'Arguments'
          end
          item
            KeywordListNumber = 5
            Name = 'Functions'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = ';'
        CommentBoxEnd = ';'
        CommentBoxMiddle = ';'
        CommentBlock = ';'
        CommentAtLineStart = True
        CommentStreamStart = ';'
        CommentStreamEnd = ';'
        NumStyleBits = 5
      end
      item
        Name = 'ASN1'
        Lexer = 'asn1'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 8355584
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numeric OID definition'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Non OID numbers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attributes'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Descriptors'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Types'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'ACCESS'
              'AGENT'
              'AUGMENTS'
              'BEGIN'
              'BITS'
              'CAPABILITIES'
              'CHOICE'
              'COMPLIANCE'
              'CONTACT'
              'CONVENTION'
              'DEFINITIONS'
              'DEFVAL'
              'DESCRIPTION'
              'DISPLAY'
              'END'
              'ENTERPRISE'
              'EXPORTS'
              'FALSE'
              'FROM'
              'GROUP'
              'GROUPS'
              'HINT'
              'IDENTITY'
              'IMPLIED'
              'IMPORTS'
              'INCLUDES'
              'INDEX'
              'INFO'
              'LAST'
              'MANDATORY'
              'MAX'
              'MIN'
              'MODULE'
              'NOTATION'
              'NOTIFICATION'
              'NULL'
              'OBJECTS'
              'OBJECT-TYPE'
              'OF'
              'ORGANIZATION'
              'PRODUCT'
              'RELEASE'
              'REFERENCE'
              'REQUIRES'
              'REVISION'
              'SEQUENCE'
              'SIZE'
              'STATUS'
              'SUPPORTS'
              'SYNTAX'
              'TEXTUAL'
              'TRAP'
              'TYPE'
              'TRAP-TYPE'
              'UPDATED'
              'VALUE'
              'VARIABLES'
              'VARIATION'
              'WRITE')
          end
          item
            KeywordListNumber = 1
            Name = 'Attributes'
            Keywords.Strings = (
              'accessible'
              'create'
              'current'
              'deprecated'
              'for'
              'mandatory'
              'not'
              'notify'
              'not-accessible'
              'obsolete'
              'only'
              'optional'
              'read'
              'read-only'
              'read-write'
              'write')
          end
          item
            KeywordListNumber = 2
            Name = 'Descriptors'
            Keywords.Strings = (
              'ABSENT'
              'ANY'
              'APPLICATION'
              'BIT'
              'BOOLEAN'
              'BY'
              'COMPONENT'
              'COMPONENTS'
              'DEFAULT'
              'DEFINED'
              'ENUMERATED'
              'EXPLICIT'
              'EXTERNAL'
              'IMPLICIT'
              'INIFINITY'
              'MAX'
              'MIN'
              'MINUS'
              'OPTIONAL'
              'PRESENT'
              'PRIVATE'
              'REAL'
              'SET'
              'TAGS'
              'TRUE')
          end
          item
            KeywordListNumber = 3
            Name = 'Types'
            Keywords.Strings = (
              'Counter'
              'Counter32'
              'Counter64'
              'DisplayString'
              'Gauge'
              'Gauge32'
              'IDENTIFIER'
              'INTEGER'
              'Integer32'
              'IpAddress'
              'NetworkAddress'
              'NsapAddress'
              'OBJECT'
              'OCTET'
              'Opaque'
              'PhysAddress'
              'STRING'
              'TimeTicks'
              'UInteger32'
              'UNITS'
              'Unsigned32')
          end>
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
      end
      item
        Name = 'AutoIt_3'
        Lexer = 'au3'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'WhiteSpace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment Block'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 15728880
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Function'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 16724991
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Macro'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Variable'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 35071
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Sent keys in string'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PreProcessor'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Special'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Expand'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ComObj'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'UDF'
            StyleNumber = 15
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'byref'
              'case'
              'continueloop'
              'dim'
              'do'
              'else'
              'elseif'
              'endfunc'
              'endif'
              'endselect'
              'exit'
              'exitloop'
              'for'
              'func'
              'global'
              'if'
              'local'
              'next'
              'not'
              'or'
              'return'
              'select'
              'step'
              'then'
              'to'
              'until'
              'wend'
              'while'
              'exit')
          end
          item
            KeywordListNumber = 1
            Name = 'Functions'
            Keywords.Strings = (
              'abs'
              'acos'
              'adlibdisable'
              'adlibenable'
              'asc'
              'asin'
              'atan'
              'autoitsetoption'
              'autoitwingettitle'
              'autoitwinsettitle'
              'bitand'
              'bitnot'
              'bitor'
              'bitshift'
              'bitxor'
              'blockinput'
              'break'
              'call'
              'cdtray'
              'chr'
              'clipget'
              'clipput'
              'controlclick'
              'controlcommand'
              'controldisable'
              'controlenable'
              'controlfocus'
              'controlgetfocus'
              'controlgetpos'
              'controlgettext'
              'controlhide'
              'controlmove'
              'controlsend'
              'controlsettext'
              'controlshow'
              'cos'
              'dec'
              'dircopy'
              'dircreate'
              'dirmove'
              'dirremove'
              'drivegetdrive'
              'drivegetfilesystem'
              'drivegetlabel'
              'drivegetserial'
              'drivegettype'
              'drivesetlabel'
              'drivespacefree'
              'drivespacetotal'
              'drivestatus'
              'envget'
              'envset'
              'envupdate'
              'eval'
              'exp'
              'filechangedir'
              'fileclose'
              'filecopy'
              'filecreateshortcut'
              'filedelete'
              'fileexists'
              'filefindfirstfile'
              'filefindnextfile'
              'filegetattrib'
              'filegetlongname'
              'filegetshortname'
              'filegetsize'
              'filegettime'
              'filegetversion'
              'fileinstall'
              'filemove'
              'fileopen'
              'fileopendialog'
              'fileread'
              'filereadline'
              'filerecycle'
              'filerecycleempty'
              'filesavedialog'
              'fileselectfolder'
              'filesetattrib'
              'filesettime'
              'filewrite'
              'filewriteline'
              'guicreate'
              'guicreateex'
              'guidefaultfont'
              'guidelete'
              'guigetcontrolstate'
              'guihide'
              'guimsg'
              'guiread'
              'guirecvmsg'
              'guisendmsg'
              'guisetcontrol'
              'guisetcontroldata'
              'guisetcontrolex'
              'guisetcontrolfont'
              'guisetcontrolnotify'
              'guisetcoord'
              'guisetcursor'
              'guishow'
              'guiwaitclose'
              'guiwrite'
              'hex'
              'hotkeyset'
              'inidelete'
              'iniread'
              'iniwrite'
              'inputbox'
              'int'
              'isadmin'
              'isarray'
              'isdeclared'
              'isfloat'
              'isint'
              'isnumber'
              'isstring'
              'log'
              'memgetstats'
              'mod'
              'mouseclick'
              'mouseclickdrag'
              'mousedown'
              'mousegetcursor'
              'mousegetpos'
              'mousemove'
              'mouseup'
              'mousewheel'
              'msgbox'
              'number'
              'pixelchecksum'
              'pixelgetcolor'
              'pixelsearch'
              'processclose'
              'processexists'
              'processsetpriority'
              'processwait'
              'processwaitclose'
              'progressoff'
              'progresson'
              'progressset'
              'random'
              'regdelete'
              'regenumkey'
              'regenumval'
              'regread'
              'regwrite'
              'round'
              'run'
              'runasset'
              'runwait'
              'send'
              'seterror'
              'shutdown'
              'sin'
              'sleep'
              'soundplay'
              'soundsetwavevolume'
              'splashimageon'
              'splashoff'
              'splashtexton'
              'sqrt'
              'statusbargettext'
              'string'
              'stringaddcr'
              'stringformat'
              'stringinstr'
              'stringisalnum'
              'stringisalpha'
              'stringisascii'
              'stringisdigit'
              'stringisfloat'
              'stringisint'
              'stringislower'
              'stringisspace'
              'stringisupper'
              'stringisxdigit'
              'stringleft'
              'stringlen'
              'stringlower'
              'stringmid'
              'stringreplace'
              'stringright'
              'stringsplit'
              'stringstripcr'
              'stringstripws'
              'stringtrimleft'
              'stringtrimright'
              'stringupper'
              'tan'
              'timerstart'
              'timerstop'
              'tooltip'
              'traytip'
              'ubound'
              'urldownloadtofile'
              'winactivate'
              'winactive'
              'winclose'
              'winexists'
              'wingetcaretpos'
              'wingetclasslist'
              'wingetclientsize'
              'wingethandle'
              'wingetpos'
              'wingetstate'
              'wingettext'
              'wingettitle'
              'winkill'
              'winmenuselectitem'
              'winminimizeall'
              'winminimizeallundo'
              'winmove'
              'winsetontop'
              'winsetstate'
              'winsettitle'
              'winwait'
              'winwaitactive'
              'winwaitclose'
              'winwaitnotactive')
          end
          item
            KeywordListNumber = 2
            Name = 'Macros'
            Keywords.Strings = (
              '@appdatacommondir'
              '@appdatadir'
              '@autoitversion'
              '@commonfilesdir'
              '@compiled'
              '@computername'
              '@comspec'
              '@cr'
              '@crlf'
              '@desktopcommondir'
              '@desktopdir'
              '@desktopheight'
              '@desktopwidth'
              '@documentscommondir'
              '@error'
              '@favoritescommondir'
              '@favoritesdir'
              '@homedrive'
              '@homepath'
              '@homeshare'
              '@hour'
              '@ipaddress1'
              '@ipaddress2'
              '@ipaddress3'
              '@ipaddress4'
              '@lf'
              '@logondnsdomain'
              '@logondomain'
              '@logonserver'
              '@mday'
              '@min'
              '@mon'
              '@mydocumentsdir'
              '@osbuild'
              '@oslang'
              '@osservicepack'
              '@ostype'
              '@osversion'
              '@programfilesdir'
              '@programscommondir'
              '@programsdir'
              '@scriptdir'
              '@scriptfullpath'
              '@scriptname'
              '@sec'
              '@startmenucommondir'
              '@startmenudir'
              '@startupcommondir'
              '@startupdir'
              '@sw_hide'
              '@sw_maximize'
              '@sw_minimize'
              '@sw_restore'
              '@sw_show'
              '@systemdir'
              '@tab'
              '@tempdir'
              '@userprofiledir'
              '@username'
              '@wday'
              '@windowsdir'
              '@workingdir'
              '@yday'
              '@year')
          end
          item
            KeywordListNumber = 3
            Name = 'Sent Keys'
            Keywords.Strings = (
              '{!}'
              '{#}'
              '{^}'
              '{{}'
              '{}}'
              '{+}'
              '{alt}'
              '{altdown}'
              '{altup}'
              '{appskey}'
              '{asc}'
              '{backspace}'
              '{browser_back}'
              '{browser_favorites}'
              '{browser_forward}'
              '{browser_home}'
              '{browser_refresh}'
              '{browser_search}'
              '{browser_stop}'
              '{bs}'
              '{capslock}'
              '{ctrlbreak}'
              '{ctrldown}'
              '{ctrlup}'
              '{del}'
              '{delete}'
              '{down}'
              '{end}'
              '{enter}'
              '{esc}'
              '{escape}'
              '{f1}'
              '{f10}'
              '{f11}'
              '{f12}'
              '{f2}'
              '{f3}'
              '{f4}'
              '{f5}'
              '{f6}'
              '{f7}'
              '{f8}'
              '{f9}'
              '{home}'
              '{ins}'
              '{insert}'
              '{lalt}'
              '{launch_app1}'
              '{launch_app2}'
              '{launch_mail}'
              '{launch_media}'
              '{lctrl}'
              '{left}'
              '{lshift}'
              '{lwin}'
              '{lwindown}'
              '{media_next}'
              '{media_play_pause}'
              '{media_prev}'
              '{media_stop}'
              '{numlock}'
              '{numpad0}'
              '{numpad1}'
              '{numpad2}'
              '{numpad3}'
              '{numpad4}'
              '{numpad5}'
              '{numpad6}'
              '{numpad7}'
              '{numpad8}'
              '{numpad9}'
              '{numpadadd}'
              '{numpaddiv}'
              '{numpaddot}'
              '{numpadenter}'
              '{numpadmult}'
              '{numpadsub}'
              '{pause}'
              '{pgdn}'
              '{pgup}'
              '{printscreen}'
              '{ralt}'
              '{rctrl}'
              '{right}'
              '{rshift}'
              '{rwin}'
              '{rwindown}'
              '{scrolllock}'
              '{shiftdown}'
              '{shiftup}'
              '{sleep}'
              '{space}'
              '{tab}'
              '{up}'
              '{volume_down}'
              '{volume_mute}'
              '{volume_up}')
          end
          item
            KeywordListNumber = 4
            Name = 'Preprocessor'
            Keywords.Strings = (
              '#include'
              '#include-once')
          end
          item
            KeywordListNumber = 5
            Name = 'Special'
            Keywords.Strings = (
              '#region'
              '#endregion')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = ';'
        CommentBoxEnd = ';'
        CommentBoxMiddle = ';'
        CommentBlock = ';'
        CommentAtLineStart = True
        CommentStreamStart = ';'
        CommentStreamEnd = ';'
        NumStyleBits = 5
      end
      item
        Name = 'Avenue'
        Lexer = 'ave'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'KeyWord'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Enum'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            Name = 'String not closed'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 1'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 2'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 3'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 4'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 5'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 6'
            StyleNumber = 16
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords 1'
          end
          item
            KeywordListNumber = 1
            Name = 'Keywords 2'
          end
          item
            KeywordListNumber = 2
            Name = 'Keywords 3'
          end
          item
            KeywordListNumber = 4
            Name = 'Keywords 4'
          end
          item
            KeywordListNumber = 5
            Name = 'Keywords 5'
          end
          item
            KeywordListNumber = 6
            Name = 'Keywords 6'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = #39
        CommentBoxEnd = #39
        CommentBoxMiddle = #39
        CommentBlock = #39
        CommentAtLineStart = True
        CommentStreamStart = #39
        CommentStreamEnd = #39
        NumStyleBits = 5
      end
      item
        Name = 'Baan'
        Lexer = 'baan'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'DLL Usage'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 2'
            StyleNumber = 10
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords 1'
          end
          item
            KeywordListNumber = 1
            Name = 'Keywords 2'
          end>
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
      end
      item
        Name = 'BASH'
        Lexer = 'bash'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White Space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clRed
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16763904
            BackColor = 723723
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers (functions, etc.)'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Scalars: $var'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Parameter expansion: ${var}'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = 10518656
            CharCase = CASE_MIXED
            Name = 'Back Ticks'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = 14536925
            CharCase = CASE_MIXED
            Name = 'Here-doc (delimiter)'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 8323199
            BackColor = 14536925
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Here-doc (single quoted, q)'
            StyleNumber = 13
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'alias'
              'ar'
              'asa'
              'awk'
              'banner'
              'basename'
              'bash'
              'bc'
              'bdiff'
              'break'
              'bunzip2'
              'bzip2'
              'cal'
              'calendar'
              'case'
              'cat'
              'cc'
              'cd'
              'chmod'
              'cksum'
              'clear'
              'cmp'
              'col'
              'comm'
              'compress'
              'continue'
              'cp'
              'cpio'
              'crypt'
              'csplit'
              'ctags'
              'cut'
              'date'
              'dc'
              'dd'
              'declare'
              'deroff'
              'dev'
              'df'
              'diff'
              'diff3'
              'dircmp'
              'dirname'
              'do'
              'done'
              'du'
              'echo'
              'ed'
              'egrep'
              'elif'
              'else'
              'env'
              'esac'
              'eval'
              'ex'
              'exec'
              'exit'
              'expand'
              'export'
              'expr'
              'false'
              'fc'
              'fgrep'
              'fi'
              'file'
              'find'
              'fmt'
              'fold'
              'for'
              'function'
              'functions'
              'getconf'
              'getopt'
              'getopts'
              'grep'
              'gres'
              'hash'
              'head'
              'help'
              'history'
              'iconv'
              'id'
              'if'
              'in'
              'integer'
              'jobs'
              'join'
              'kill'
              'local'
              'lc'
              'let'
              'line'
              'ln'
              'logname'
              'look'
              'ls'
              'm4'
              'mail'
              'mailx'
              'make'
              'man'
              'mkdir'
              'more'
              'mt'
              'mv'
              'newgrp'
              'nl'
              'nm'
              'nohup'
              'ntps'
              'od'
              'pack'
              'paste'
              'patch'
              'pathchk'
              'pax'
              'pcat'
              'perl'
              'pg'
              'pr'
              'print'
              'printf'
              'ps'
              'pwd'
              'read'
              'readonly'
              'red'
              'return'
              'rev'
              'rm'
              'rmdir'
              'sed'
              'select'
              'set'
              'sh'
              'shift'
              'size'
              'sleep'
              'sort'
              'spell'
              'split'
              'start'
              'stop'
              'strings'
              'strip'
              'stty'
              'sum'
              'suspend'
              'sync'
              'tail'
              'tar'
              'tee'
              'test'
              'then'
              'time'
              'times'
              'touch'
              'tr'
              'trap'
              'true'
              'tsort'
              'tty'
              'type'
              'typeset'
              'ulimit'
              'umask'
              'unalias'
              'uname'
              'uncompress'
              'unexpand'
              'uniq'
              'unpack'
              'unset'
              'until'
              'uudecode'
              'uuencode'
              'vi'
              'vim'
              'vpax'
              'wait'
              'wc'
              'whence'
              'which'
              'while'
              'who'
              'wpaste'
              'wstart'
              'xargs'
              'zcat'
              'chgrp'
              'chown'
              'chroot'
              'dir'
              'dircolors'
              'factor'
              'groups'
              'hostid'
              'install'
              'link'
              'md5sum'
              'mkfifo'
              'mknod'
              'nice'
              'pinky'
              'printenv'
              'ptx'
              'readlink'
              'seq'
              'sha1sum'
              'shred'
              'stat'
              'su'
              'tac'
              'unlink'
              'users'
              'vdir'
              'whoami'
              'yes')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '#'
        CommentStreamEnd = '#'
        NumStyleBits = 5
      end
      item
        Name = 'Batch'
        Lexer = 'batch'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Hide command char (@)'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16763904
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'External Commands'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13408767
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Variable'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10089408
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = clGreen
            CharCase = CASE_MIXED
            Name = 'String Not EOL'
            StyleNumber = 9
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Internal Commands'
            Keywords.Strings = (
              'rem'
              'set'
              'if'
              'exist'
              'errorlevel'
              'for'
              'in'
              'do'
              'break'
              'call'
              'chcp'
              'cd'
              'chdir'
              'choice'
              'cls'
              'country'
              'ctty'
              'date'
              'del'
              'erase'
              'dir'
              'echo'
              'exit'
              'goto'
              'loadfix'
              'loadhigh'
              'mkdir'
              'md'
              'move'
              'path'
              'pause'
              'prompt'
              'rename'
              'ren'
              'rmdir'
              'rd'
              'shift'
              'time'
              'type'
              'ver'
              'verify'
              'vol'
              'com'
              'con'
              'lpt'
              'nul'
              'endlocal'
              'setlocal')
          end
          item
            KeywordListNumber = 1
            Name = 'External Commands'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = 'rem'
        CommentBoxEnd = 'rem'
        CommentBoxMiddle = 'rem'
        CommentBlock = 'rem'
        CommentAtLineStart = True
        CommentStreamStart = 'rem'
        CommentStreamEnd = 'rem'
        NumStyleBits = 5
      end
      item
        Name = 'BlitzBasic'
        Lexer = 'blitzbasic'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PreProcessor'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Date'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String not terminated'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 1'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 2'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 3'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Constant'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Asm'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clRed
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'HexNumber'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'BinNumber'
            StyleNumber = 18
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'abs'
              'accepttcpstream'
              'acos'
              'after'
              'and'
              'apptitle'
              'asc'
              'asin'
              'atan'
              'atan2'
              'automidhandle'
              'autosuspend'
              'availvidmem'
              'backbuffer'
              'banksize'
              'before'
              'bin'
              'calldll'
              'case'
              'ceil'
              'changedir'
              'channelpan'
              'channelpitch'
              'channelplaying'
              'channelvolume'
              'chr'
              'closedir'
              'closefile'
              'closemovie'
              'closetcpserver'
              'closetcpstream'
              'closeudpstream'
              'cls'
              'clscolor'
              'color'
              'colorblue'
              'colorgreen'
              'colorred'
              'commandline'
              'const'
              'copybank'
              'copyfile'
              'copyimage'
              'copypixel'
              'copypixelfast'
              'copyrect'
              'copystream'
              'cos'
              'countgfxdrivers'
              'countgfxmodes'
              'counthostips'
              'createbank'
              'createdir'
              'createimage'
              'createnetplayer'
              'createprocess'
              'createtcpserver'
              'createtimer'
              'createudpstream'
              'currentdate'
              'currentdir'
              'currenttime'
              'data'
              'debuglog'
              'default'
              'delay'
              'delete'
              'deletedir'
              'deletefile'
              'deletenetplayer'
              'desktopbuffer'
              'dim'
              'dottedip'
              'drawblock'
              'drawblockrect'
              'drawimage'
              'drawimagerect'
              'drawmovie'
              'each'
              'else'
              'else'
              'if'
              'elseif'
              'end'
              'end'
              'function'
              'end'
              'if'
              'end'
              'select'
              'end'
              'type'
              'endgraphics'
              'endif'
              'eof'
              'execfile'
              'exit'
              'exp'
              'false'
              'field'
              'filepos'
              'filesize'
              'filetype'
              'first'
              'flip'
              'float'
              'floor'
              'flushjoy'
              'flushkeys'
              'flushmouse'
              'fontheight'
              'fontname'
              'fontsize'
              'fontstyle'
              'fontwidth'
              'for'
              'forever'
              'freebank'
              'freefont'
              'freeimage'
              'freesound'
              'freetimer'
              'frontbuffer'
              'function'
              'gammablue'
              'gammagreen'
              'gammared'
              'getcolor'
              'getenv'
              'getkey'
              'getmouse'
              'gfxdrivername'
              'gfxmodedepth'
              'gfxmodeexists'
              'gfxmodeformat'
              'gfxmodeheight'
              'gfxmodewidth'
              'global'
              'gosub'
              'goto'
              'grabimage'
              'graphics'
              'graphicsbuffer'
              'graphicsdepth'
              'graphicsformat'
              'graphicsheight'
              'graphicswidth'
              'handleimage'
              'hex'
              'hidepointer'
              'hostip'
              'hostnetgame'
              'if'
              'imagebuffer'
              'imageheight'
              'imagerectcollide'
              'imagerectoverlap'
              'imagescollide'
              'imagesoverlap'
              'imagewidth'
              'imagexhandle'
              'imageyhandle'
              'include'
              'input'
              'insert'
              'instr'
              'int'
              'joinnetgame'
              'joydown'
              'joyhat'
              'joyhit'
              'joypitch'
              'joyroll'
              'joytype'
              'joyu'
              'joyudir'
              'joyv'
              'joyvdir'
              'joyx'
              'joyxdir'
              'joyy'
              'joyyaw'
              'joyydir'
              'joyz'
              'joyzdir'
              'keydown'
              'keyhit'
              'keywait'
              'last'
              'left'
              'len'
              'line'
              'loadanimimage'
              'loadbuffer'
              'loadfont'
              'loadimage'
              'loadsound'
              'local'
              'lockbuffer'
              'lockedformat'
              'lockedpitch'
              'lockedpixels'
              'log'
              'log10'
              'loopsound'
              'lower'
              'lset'
              'maskimage'
              'mid'
              'midhandle'
              'millisecs'
              'mod'
              'morefiles'
              'mousedown'
              'mousehit'
              'mousex'
              'mousexspeed'
              'mousey'
              'mouseyspeed'
              'mousez'
              'mousezspeed'
              'movemouse'
              'movieheight'
              'movieplaying'
              'moviewidth'
              'netmsgdata'
              'netmsgfrom'
              'netmsgto'
              'netmsgtype'
              'netplayerlocal'
              'netplayername'
              'new'
              'next'
              'nextfile'
              'not'
              'null'
              'openfile'
              'openmovie'
              'opentcpstream'
              'or'
              'origin'
              'oval'
              'pausechannel'
              'pausetimer'
              'peekbyte'
              'peekfloat'
              'peekint'
              'peekshort'
              'pi'
              'playcdtrack'
              'playmusic'
              'playsound'
              'plot'
              'pokebyte'
              'pokefloat'
              'pokeint'
              'pokeshort'
              'print'
              'queryobject'
              'rand'
              'read'
              'readavail'
              'readbyte'
              'readbytes'
              'readdir'
              'readfile'
              'readfloat'
              'readint'
              'readline'
              'readpixel'
              'readpixelfast'
              'readshort'
              'readstring'
              'rect'
              'rectsoverlap'
              'recvnetmsg'
              'recvudpmsg'
              'repeat'
              'replace'
              'resettimer'
              'resizebank'
              'resizeimage'
              'restore'
              'resumechannel'
              'resumetimer'
              'return'
              'right'
              'rnd'
              'rndseed'
              'rotateimage'
              'rset'
              'runtimeerror'
              'sar'
              'savebuffer'
              'saveimage'
              'scaleimage'
              'scanline'
              'seedrnd'
              'seekfile'
              'select'
              'sendnetmsg'
              'sendudpmsg'
              'setbuffer'
              'setenv'
              'setfont'
              'setgamma'
              'setgfxdriver'
              'sgn'
              'shl'
              'showpointer'
              'shr'
              'sin'
              'soundpan'
              'soundpitch'
              'soundvolume'
              'sqr'
              'startnetgame'
              'step'
              'stop'
              'stopchannel'
              'stopnetgame'
              'str'
              'string'
              'stringheight'
              'stringwidth'
              'systemproperty'
              'tan'
              'tcpstreamip'
              'tcpstreamport'
              'tcptimeouts'
              'text'
              'tformfilter'
              'tformimage'
              'then'
              'tileblock'
              'tileimage'
              'timerticks'
              'to'
              'totalvidmem'
              'trim'
              'true'
              'type'
              'udpmsgip'
              'udpmsgport'
              'udpstreamip'
              'udpstreamport'
              'udptimeouts'
              'unlockbuffer'
              'until'
              'updategamma'
              'upper'
              'viewport'
              'vwait'
              'waitkey'
              'waitmouse'
              'waittimer'
              'wend'
              'while'
              'write'
              'writebyte'
              'writebytes'
              'writefile'
              'writefloat'
              'writeint'
              'writeline'
              'writepixel'
              'writepixelfast'
              'writeshort'
              'writestring'
              'xor')
          end
          item
            KeywordListNumber = 1
            Name = 'User Defined 1'
          end
          item
            KeywordListNumber = 2
            Name = 'User Defined 2'
          end
          item
            KeywordListNumber = 3
            Name = 'User Defined 3'
          end>
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
      end
      item
        Name = 'Bullant'
        Lexer = 'bullant'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Character'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 8355584
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 8323199
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '@off'
        CommentBoxEnd = '@on'
        CommentBoxMiddle = '*'
        CommentBlock = ';'
        CommentAtLineStart = True
        CommentStreamStart = ';'
        CommentStreamEnd = ';'
        NumStyleBits = 5
      end
      item
        Name = 'C#'
        Lexer = 'cpp'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols/UUID'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Verbatim strings for C#'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regular expressions'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Line'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User-defined keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global classes and typedefs'
            StyleNumber = 19
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'abstract'
              'as'
              'base'
              'bool'
              'break'
              'byte'
              'case'
              'catch'
              'char'
              'checked'
              'class'
              'const'
              'continue'
              'decimal'
              'default'
              'delegate'
              'do'
              'double'
              'else'
              'enum'
              'event'
              'explicit'
              'extern'
              'false'
              'finally'
              'fixed'
              'float'
              'for'
              'foreach'
              'goto'
              'if'
              'implicit'
              'in'
              'int'
              'interface'
              'internal'
              'is'
              'lock'
              'long'
              'namespace'
              'new'
              'null'
              'object'
              'operator'
              'out'
              'override'
              'params'
              'private'
              'protected'
              'public'
              'readonly'
              'ref'
              'return'
              'sbyte'
              'sealed'
              'short'
              'sizeof'
              'stackalloc'
              'static'
              'string'
              'struct'
              'switch'
              'this'
              'throw'
              'true'
              'try'
              'typeof'
              'uint'
              'ulong'
              'unchecked'
              'unsafe'
              'ushort'
              'using'
              'virtual'
              'void'
              'while')
          end>
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
      end
      item
        Name = 'C++/C'
        Lexer = 'cpp'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols/UUID'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Verbatim strings for C#'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regular expressions'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Line'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User-defined keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global classes and typedefs'
            StyleNumber = 19
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Primary keywords and identifiers'
            Keywords.Strings = (
              '__asm'
              '_asm'
              'asm'
              'auto'
              '__automated'
              'bool'
              'break'
              'case'
              'catch'
              '__cdecl'
              '_cdecl'
              'cdecl'
              'char'
              'class'
              '__classid'
              '__closure'
              'const'
              'const_cast'
              'continue'
              '__declspec'
              'default'
              'delete'
              '__dispid'
              'do'
              'double'
              'dynamic_cast'
              'else'
              'enum'
              '__except'
              'explicit'
              '__export'
              'export'
              'extern'
              'false'
              '__fastcall'
              '_fastcall'
              '__finally'
              'float'
              'for'
              'friend'
              'goto'
              'if'
              '__import'
              '_import'
              '__inline'
              'inline'
              'int'
              '__int16'
              '__int32'
              '__int64'
              '__int8'
              'long'
              '__msfastcall'
              '__msreturn'
              'mutable'
              'namespace'
              'new'
              '__pascal'
              '_pascal'
              'pascal'
              'private'
              '__property'
              'protected'
              'public'
              '__published'
              'register'
              'reinterpret_cast'
              'return'
              '__rtti'
              'short'
              'signed'
              'sizeof'
              'static_cast'
              'static'
              '__stdcall'
              '_stdcall'
              'struct'
              'switch'
              'template'
              'this'
              '__thread'
              'throw'
              'true'
              '__try'
              'try'
              'typedef'
              'typeid'
              'typename'
              'union'
              'unsigned'
              'using'
              'virtual'
              'void'
              'volatile'
              'wchar_t'
              'while'
              'dllexport'
              'dllimport'
              'naked'
              'noreturn'
              'nothrow'
              'novtable'
              'property'
              'selectany'
              'thread'
              'uuid')
          end
          item
            KeywordListNumber = 1
            Name = 'Secondary keywords and identifiers'
            Keywords.Strings = (
              'TStream'
              'TFileStream'
              'TMemoryStream'
              'TBlobStream'
              'TOleStream'
              'TStrings'
              'TStringList'
              'AnsiString'
              'String'
              'WideString'
              'cout'
              'cin'
              'cerr'
              'endl'
              'fstream'
              'ostream'
              'istream'
              'wstring'
              'string'
              'deque'
              'list'
              'vector'
              'set'
              'multiset'
              'bitset'
              'map'
              'multimap'
              'stack'
              'queue'
              'priority_queue')
          end
          item
            KeywordListNumber = 2
            Name = 'Doc Comments'
            Keywords.Strings = (
              'a'
              'addindex'
              'addtogroup'
              'anchor'
              'arg'
              'attention'
              'author'
              'b'
              'brief'
              'bug'
              'c'
              'class'
              'code'
              'date'
              'def'
              'defgroup'
              'deprecated'
              'dontinclude'
              'e'
              'em'
              'endcode'
              'endhtmlonly'
              'endif'
              'endlatexonly'
              'endlink'
              'endverbatim'
              'enum'
              'example'
              'exception'
              'f$'
              'f['
              'f]'
              'file'
              'fn'
              'hideinitializer'
              'htmlinclude'
              'htmlonly'
              'if'
              'image'
              'include'
              'ingroup'
              'internal'
              'invariant'
              'interface'
              'latexonly'
              'li'
              'line'
              'link'
              'mainpage'
              'name'
              'namespace'
              'nosubgrouping'
              'note'
              'overload'
              'p'
              'page'
              'par'
              'param'
              'post'
              'pre'
              'ref'
              'relates'
              'remarks'
              'return'
              'retval'
              'sa'
              'section'
              'see'
              'showinitializer'
              'since'
              'skip'
              'skipline'
              'struct'
              'subsection'
              'test'
              'throw'
              'todo'
              'typedef'
              'union'
              'until'
              'var'
              'verbatim'
              'verbinclude'
              'version'
              'warning'
              'weakgroup'
              '$'
              '@'
              '<'
              '>'
              '\'
              '&'
              '#'
              '{'
              '}')
          end
          item
            KeywordListNumber = 3
            Name = 'Unused'
          end
          item
            KeywordListNumber = 4
            Name = 'Global classes and typedefs'
          end>
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
      end
      item
        Name = 'Clarion'
        Lexer = 'clarion'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Identifier'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Integer Constant'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Real Constant'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Picture String'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Compiler Directive'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Builtin Procedures/Function'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Structure/Data type'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attribute'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Standard Equate'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 14
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Clarion Keywords'
          end
          item
            KeywordListNumber = 1
            Name = 'Compiler Directives'
          end
          item
            KeywordListNumber = 2
            Name = 'Built-in Procedures and Functions'
          end
          item
            KeywordListNumber = 3
            Name = 'Structure and Data Types'
          end
          item
            KeywordListNumber = 4
            Name = 'Attributes'
          end
          item
            KeywordListNumber = 5
            Name = 'Standard Equates'
          end
          item
            KeywordListNumber = 6
            Name = 'Reserved Words'
          end>
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
      end
      item
        Name = 'Clarion_Nocase'
        Lexer = 'clarionnocase'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Identifier'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Integer Constant'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Real Constant'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Picture String'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Compiler Directive'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Builtin Procedures/Function'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Structure/Data type'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attribute'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Standard Equate'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 14
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Clarion Keywords'
          end
          item
            KeywordListNumber = 1
            Name = 'Compiler Directives'
          end
          item
            KeywordListNumber = 2
            Name = 'Built-in Procedures and Functions'
          end
          item
            KeywordListNumber = 3
            Name = 'Structure and Data Types'
          end
          item
            KeywordListNumber = 4
            Name = 'Attributes'
          end
          item
            KeywordListNumber = 5
            Name = 'Standard Equates'
          end
          item
            KeywordListNumber = 6
            Name = 'Reserved Words'
          end>
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
      end
      item
        Name = 'CSS'
        Lexer = 'css'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'CSS1 Tag'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Class'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Pseudo Class'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Pseudo Class'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Identifiers'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 43673
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Value'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16744576
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ID'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Important'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 4500223
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Directive'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 14721024
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'CSS2 Tag'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attribute'
            StyleNumber = 16
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'color'
              'background-color'
              'background-image'
              'background-repeat'
              'background-attachment'
              'background-position'
              'background'
              'font-family'
              'font-style'
              'font-variant'
              'font-weight'
              'font-size'
              'font'
              'word-spacing'
              'letter-spacing'
              'text-decoration'
              'vertical-align'
              'text-transform'
              'text-align'
              'text-indent'
              'line-height'
              'margin-top'
              'margin-right'
              'margin-bottom'
              'margin-left'
              'margin'
              'padding-top'
              'padding-right'
              'padding-bottom'
              'padding-left'
              'padding'
              'border-top-width'
              'border-right-width'
              'border-bottom-width'
              'border-left-width'
              'border-width'
              'border-top'
              'border-right'
              'border-bottom'
              'border-left'
              'border'
              'border-color'
              'border-style'
              'width'
              'height'
              'float'
              'clear'
              'display'
              'white-space'
              'list-style-type'
              'list-style-image'
              'list-style-position'
              'list-style'
              'scrollbar-3dlight-color'
              'scrollbar-arrow-color'
              'scrollbar-base-color'
              'scrollbar-darkshadow-color'
              'scrollbar-face-color'
              'scrollbar-highlight-color'
              'scrollbar-shadow-color'
              'scrollbar-track-color')
          end
          item
            KeywordListNumber = 1
            Name = 'Pseudo Classes'
            Keywords.Strings = (
              'first-letter'
              'first-line'
              'link'
              'active'
              'visited'
              'first-child'
              'focus'
              'hover'
              'lang'
              'before'
              'after'
              'left'
              'right'
              'first')
          end
          item
            KeywordListNumber = 2
            Name = 'CSS2 Keywords'
            Keywords.Strings = (
              'border-top-color'
              'border-right-color'
              'border-bottom-color'
              'border-left-color'
              'border-color'
              'border-top-style'
              'border-right-style'
              'border-bottom-style'
              'border-left-style'
              'border-style'
              'top'
              'right'
              'bottom'
              'left'
              'position'
              'z-index'
              'direction'
              'unicode-bidi'
              'min-width'
              'max-width'
              'min-height'
              'max-height'
              'overflow'
              'clip'
              'visibility'
              'content'
              'quotes'
              'counter-reset'
              'counter-increment'
              'marker-offset'
              'size'
              'marks'
              'page-break-before'
              'page-break-after'
              'page-break-inside'
              'page'
              'orphans'
              'widows'
              'font-stretch'
              'font-size-adjust'
              'unicode-range'
              'units-per-em'
              'src'
              'panose-1'
              'stemv'
              'stemh'
              'slope'
              'cap-height'
              'x-height'
              'ascent'
              'descent'
              'widths'
              'bbox'
              'definition-src'
              'baseline'
              'centerline'
              'mathline'
              'topline'
              'text-shadow'
              'caption-side'
              'table-layout'
              'border-collapse'
              'border-spacing'
              'empty-cells'
              'speak-header'
              'cursor'
              'outline'
              'outline-width'
              'outline-style'
              'outline-color'
              'volume'
              'speak'
              'pause-before'
              'pause-after'
              'pause'
              'cue-before'
              'cue-after'
              'cue'
              'play-during'
              'azimuth'
              'elevation'
              'speech-rate'
              'voice-family'
              'pitch'
              'pitch-range'
              'stress'
              'richness'
              'speak-punctuation'
              'speak-numeral')
          end>
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
      end
      item
        Name = 'Diff'
        Lexer = 'diff'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 
              'Comment (part before "diff ..." or "--- ..." and , Only in ..., ' +
              'Binary file...)'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Command (diff ...)'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 159
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Source file (--- ...) and Destination file (+++ ...)'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 4129023
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Position setting (@@ ...)'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line removal (-...)'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16720639
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Line addition (+...)'
            StyleNumber = 6
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '#'
        CommentStreamEnd = '#'
        NumStyleBits = 5
      end
      item
        Name = 'Eiffel'
        Lexer = 'eiffel'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Character'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 8
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'alias'
              'all'
              'and'
              'any'
              'as'
              'bit'
              'boolean'
              'check'
              'class'
              'character'
              'clone'
              'create'
              'creation'
              'current'
              'debug'
              'deferred'
              'div'
              'do'
              'double'
              'else'
              'elseif'
              'end'
              'ensure'
              'equal'
              'expanded'
              'export'
              'external'
              'false'
              'feature'
              'forget'
              'from'
              'frozen'
              'general'
              'if'
              'implies'
              'indexing'
              'infix'
              'inherit'
              'inspect'
              'integer'
              'invariant'
              'is'
              'language'
              'like'
              'local'
              'loop'
              'mod'
              'name'
              'nochange'
              'none'
              'not'
              'obsolete'
              'old'
              'once'
              'or'
              'platform'
              'pointer'
              'prefix'
              'precursor'
              'real'
              'redefine'
              'rename'
              'require'
              'rescue'
              'result'
              'retry'
              'select'
              'separate'
              'string'
              'strip'
              'then'
              'true'
              'undefine'
              'unique'
              'until'
              'variant'
              'void'
              'when'
              'xor')
          end>
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
      end
      item
        Name = 'Eiffel_kw'
        Lexer = 'eiffelkw'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Character'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 8
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'alias'
              'all'
              'and'
              'any'
              'as'
              'bit'
              'boolean'
              'check'
              'class'
              'character'
              'clone'
              'create'
              'creation'
              'current'
              'debug'
              'deferred'
              'div'
              'do'
              'double'
              'else'
              'elseif'
              'end'
              'ensure'
              'equal'
              'expanded'
              'export'
              'external'
              'false'
              'feature'
              'forget'
              'from'
              'frozen'
              'general'
              'if'
              'implies'
              'indexing'
              'infix'
              'inherit'
              'inspect'
              'integer'
              'invariant'
              'is'
              'language'
              'like'
              'local'
              'loop'
              'mod'
              'name'
              'nochange'
              'none'
              'not'
              'obsolete'
              'old'
              'once'
              'or'
              'platform'
              'pointer'
              'prefix'
              'precursor'
              'real'
              'redefine'
              'rename'
              'require'
              'rescue'
              'result'
              'retry'
              'select'
              'separate'
              'string'
              'strip'
              'then'
              'true'
              'undefine'
              'unique'
              'until'
              'variant'
              'void'
              'when'
              'xor')
          end>
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
      end
      item
        Name = 'EmailMessage'
        Lexer = 'email'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Header Tags'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16750487
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Header Value'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Highlighted Headers'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Highlighted Headers Value'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Quote'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 55769
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'EMail Address'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15921664
            BackColor = clDefault
            CharCase = CASE_MIXED
            Hotspot = True
            Name = 'Url Adresses'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 1'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 2'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 3'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 4'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword 5'
            StyleNumber = 12
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Header Tags'
            Keywords.Strings = (
              'return-path'
              'received'
              'reply-to'
              'from'
              'sender'
              'resent-reply-to'
              'resent-from'
              'resent-sender'
              'date'
              'resent-date'
              'to'
              'cc'
              'resent-cc'
              'bcc'
              'resent-bcc'
              'message-id'
              'resent-message-id'
              'in-reply-to'
              'references'
              'keywords'
              'comments'
              'encrypted'
              'newsgroups'
              'path'
              'followup-to'
              'expires'
              'references'
              'distribution'
              'organization'
              'summary'
              'approved'
              'lines'
              'xref'
              'mime-version'
              'control'
              'also-control'
              'content-disposition'
              'mail-system-version'
              'mailer'
              'originating-client'
              'x-mailer'
              'x-newsreader'
              'apparently-to'
              'for-comment'
              'for-handling'
              'disclose-recipients'
              'alternate-recipient'
              'original-encoded-information-types'
              'errors-to'
              'return-receipt-to'
              'prevent-nondelivery-report'
              'generate-delivery-report'
              'content-return'
              'content-id'
              'content-base'
              'content-location'
              'see-also'
              'obsoletes'
              'supersedes'
              'article-updates'
              'article-names'
              'content-description'
              'organisation'
              'content-identifier'
              'delivery-date'
              'expiry-date'
              'reply-by'
              'priority'
              'precedence'
              'importance'
              'sensitivity'
              'incomplete-copy'
              'language'
              'content-language'
              'content-length'
              'conversion'
              'content-conversion'
              'conversion-with-loss'
              'content-type'
              'content-sgml-entity'
              'content-transfer-encoding'
              'message-type'
              'encoding'
              'content-md5'
              'fcc'
              'auto-forwarded'
              'status'
              'discarded-x400-ipms-extensions'
              'discarded-x400-mts-extensions'
              'x-beenthere'
              'x-mailman-version'
              'list-id'
              'list-unsubscribe'
              'list-archive'
              'list-post'
              'list-help'
              'list-subscribe')
          end
          item
            KeywordListNumber = 1
            Name = 'Highlighted Header Tags'
            Keywords.Strings = (
              'subject')
          end
          item
            KeywordListNumber = 2
            Name = 'Keywords 1'
          end
          item
            KeywordListNumber = 3
            Name = 'Keywords 2'
          end
          item
            KeywordListNumber = 4
            Name = 'Keywords 3'
          end
          item
            KeywordListNumber = 5
            Name = 'Keywords 4'
          end
          item
            KeywordListNumber = 6
            Name = 'Keywords 5'
          end>
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
      end
      item
        Name = 'ErrorList'
        Lexer = 'errorlist'
        Styles = <
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Python Error'
            StyleNumber = 1
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'GCC Error'
            StyleNumber = 2
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Microsoft Error'
            StyleNumber = 3
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Command or return status'
            StyleNumber = 4
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Borland Error and Warnings'
            StyleNumber = 5
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Perl Error and Warnings'
            StyleNumber = 6
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = '.Net tracebacks'
            StyleNumber = 7
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Lua error and warning messages'
            StyleNumber = 8
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'CTags'
            StyleNumber = 9
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Diff Changed !'
            StyleNumber = 10
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = 16720639
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Diff Addition +'
            StyleNumber = 11
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Diff Deletion -'
            StyleNumber = 12
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Diff Message ---'
            StyleNumber = 13
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Error'
            StyleNumber = 14
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Essential Lahey Fortran 90 error'
            StyleNumber = 15
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Intel Fortran Compiler error'
            StyleNumber = 16
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Intel Fortran Compiler v8.0 error/warning'
            StyleNumber = 17
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Absoft Pro Fortran 90/95 v8.2 error or warning'
            StyleNumber = 18
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'HTML Tidy'
            StyleNumber = 19
          end
          item
            FontSize = 10
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Java runtime stack trace'
            StyleNumber = 20
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
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
      end
      item
        Name = 'EScript'
        Lexer = 'escript'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Primary keywords and identifiers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted String'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Braces'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Intrinsic functions'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Extended and user defined functions'
            StyleNumber = 11
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Primary keywords and identifiers'
            Keywords.Strings = (
              'basic'
              'basicio'
              'boats'
              'cfgfile'
              'file'
              'http'
              'npc'
              'os'
              'uo'
              'util'
              'accessible'
              'addmenuitem'
              'appendconfigfileelem'
              'applyconstraint'
              'applydamage'
              'applyrawdamage'
              'assignrecttoweatherregion'
              'append'
              'baseskilltorawskill'
              'boatfromitem'
              'broadcast'
              'ban'
              'cdbl'
              'cint'
              'cstr'
              'checklineofsight'
              'checklosat'
              'checkskill'
              'consumemana'
              'consumereagents'
              'consumesubstance'
              'createaccount'
              'createitematlocation'
              'createiteminbackpack'
              'createitemininventory'
              'createitemincontainer'
              'createmenu'
              'createmultiatlocation'
              'createnpcfromtemplate'
              'createrootiteminstoragearea'
              'createstoragearea'
              'clear_script_profile_counters'
              'close'
              'damage'
              'destroyitem'
              'destroymulti'
              'destroyrootiteminstoragearea'
              'detach'
              'disableevents'
              'disconnectclient'
              'distance'
              'disable'
              'enableevents'
              'enumerateitemsincontainer'
              'enumerateonlinecharacters'
              'equipfromtemplate'
              'equipitem'
              'eraseglobalproperty'
              'eraseobjproperty'
              'enable'
              'enabled'
              'erase'
              'events_waiting'
              'exists'
              'findconfigelem'
              'findobjtypeincontainer'
              'findrootiteminstoragearea'
              'findstoragearea'
              'fclose'
              'find'
              'fopen'
              'fread'
              'fseek'
              'ftell'
              'fwrite'
              'gamestat'
              'getamount'
              'getcommandhelp'
              'getconfigint'
              'getconfigintkeys'
              'getconfigmaxintkey'
              'getconfigreal'
              'getconfigstring'
              'getconfigstringkeys'
              'getconfigstringarray'
              'getelemproperty'
              'getequipmentbylayer'
              'getglobalproperty'
              'getharvestdifficulty'
              'getmapinfo'
              'getmenuobjtypes'
              'getobjproperty'
              'getobjtype'
              'getobjtypebyname'
              'getproperty'
              'getrawskill'
              'getregionstring'
              'getskill'
              'getspelldifficulty'
              'getstandingheight'
              'getworldheight'
              'grantprivilege'
              'harvestresource'
              'healdamage'
              'hex'
              'islegalmove'
              'insert'
              'keys'
              'listequippeditems'
              'listghostsnearlocation'
              'listhostiles'
              'listitemsatlocation'
              'listitemsnearlocation'
              'listitemsnearlocationoftype'
              'listmobilesinlineofsight'
              'listmobilesnearlocation'
              'listmobilesnearlocationex'
              'listobjectsinbox'
              'loadtusscpfile'
              'left'
              'len'
              'log_profile'
              'lower'
              'makeboundingbox'
              'move'
              'moveboat'
              'moveboatrelative'
              'movecharactertolocation'
              'moveitemtocontainer'
              'moveitemtolocation'
              'move_offline_mobiles'
              'openpaperdoll'
              'open'
              'pack'
              'performaction'
              'playlightningbolteffect'
              'playmovingeffect'
              'playmovingeffectxyz'
              'playobjectcenteredeffect'
              'playsoundeffect'
              'playsoundeffectprivate'
              'playstationaryeffect'
              'printtextabove'
              'printtextaboveprivate'
              'packages'
              'polcore'
              'position'
              'print'
              'queryparam'
              'randomdiceroll'
              'randomint'
              'rawskilltobaseskill'
              'readconfigfile'
              'readgameclock'
              'releaseitem'
              'registerforspeechevents'
              'registeritemwithboat'
              'requestinput'
              'reserveitem'
              'restartscript'
              'resurrect'
              'revokeprivilege'
              'runawayfrom'
              'runawayfromlocation'
              'runtoward'
              'runtowardlocation'
              'reverse'
              'run_script_to_completion'
              'saveworldstate'
              'selectmenuitem2'
              'self'
              'sendbuywindow'
              'senddialoggump'
              'sendevent'
              'sendopenspecialcontainer'
              'sendpacket'
              'sendsellwindow'
              'sendskillwindow'
              'sendstringastipwindow'
              'sendsysmessage'
              'sendtextentrygump'
              'setanchor'
              'setglobalproperty'
              'setname'
              'setobjproperty'
              'setopponent'
              'setproperty'
              'setrawskill'
              'setregionlightlevel'
              'setregionweatherlevel'
              'setscriptcontroller'
              'setwarmode'
              'shutdown'
              'speakpowerwords'
              'splitwords'
              'startspelleffect'
              'subtractamount'
              'systemfindboatbyserial'
              'systemfindobjectbyserial'
              'say'
              'set_critical'
              'set_debug'
              'set_priority'
              'set_priority_divide'
              'set_script_option'
              'setcmdlevel'
              'setdex'
              'setint'
              'setlightlevel'
              'setmaster'
              'setname'
              'setpassword'
              'setstr'
              'shrink'
              'size'
              'sleep'
              'sleepms'
              'sort'
              'spendgold'
              'squelch'
              'start_script'
              'syslog'
              'system_rpm'
              'target'
              'targetcoordinates'
              'targetmultiplacement'
              'turnawayfrom'
              'turnawayfromlocation'
              'turnboat'
              'turntoward'
              'turntowardlocation'
              'toggle'
              'unloadconfigfile'
              'unpack'
              'unban'
              'unload_scripts'
              'upper'
              'walkawayfrom'
              'walkawayfromlocation'
              'walktoward'
              'walktowardlocation'
              'wander'
              'writehtml'
              'writehtmlraw'
              'wait_for_event'
              'movechar_forcelocation'
              'moveitem_forcelocation'
              'moveitem_normal'
              'scriptopt_debug'
              'scriptopt_no_interrupt'
              'scriptopt_no_runaway'
              'te_cancel_disable'
              'te_cancel_enable'
              'te_style_disable'
              'te_style_normal'
              'te_style_numerical'
              'tgtopt_check_los'
              'tgtopt_harmful'
              'tgtopt_helpful'
              'tgtopt_neutral'
              'tgtopt_nocheck_los'
              'setprop'
              'getprop')
          end
          item
            KeywordListNumber = 1
            Name = 'Intrinsic functions'
            Keywords.Strings = (
              'array'
              'const'
              'dictionary'
              'global'
              'local'
              'var'
              'and'
              'default'
              'in'
              'next'
              'not'
              'or'
              'return'
              'to'
              'include'
              'use'
              'enum')
          end
          item
            KeywordListNumber = 2
            Name = 'Extended and user defined functions'
            Keywords.Strings = (
              'while'
              'for'
              'endfor'
              'function'
              'program'
              'endprogram'
              'endfunction'
              'foreach'
              'case'
              'else'
              'elseif'
              'if'
              'endcase'
              'endenum'
              'endforeach'
              'endif'
              'endwhile')
          end>
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
      end
      item
        Name = 'Forth'
        Lexer = 'forth'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment ML'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Control Keywords'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Definition Words'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Prewords with one argument'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Prewords with two arguments'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Locale'
            StyleNumber = 11
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Control keywords'
            Keywords.Strings = (
              'AGAIN'
              'BEGIN'
              'CASE'
              'DO'
              'ELSE'
              'ENDCASE'
              'ENDOF'
              'IF'
              'LOOP'
              'OF'
              'REPEAT'
              'THEN'
              'UNTIL'
              'WHILE'
              '[IF]'
              '[ELSE]'
              '[THEN]'
              '?DO')
          end
          item
            KeywordListNumber = 1
            Name = 'Keywords'
            Keywords.Strings = (
              'DUP'
              'DROP'
              'ROT'
              'SWAP'
              'OVER'
              '@'
              '!'
              '2@'
              '2!'
              '2DUP'
              '2DROP'
              '2SWAP'
              '2OVER'
              'NIP'
              'R@'
              '>R'
              'R>'
              '2R@'
              '2>R'
              '2R>'
              '0='
              '0<'
              'SP@'
              'SP!'
              'W@'
              'W!'
              'C@'
              'C!'
              '<'
              '>'
              '='
              '<>'
              '0<>SPACE'
              'SPACES'
              'KEY?'
              'KEY'
              'THROW'
              'CATCH'
              'ABORT'
              '*/'
              '2*'
              '/MOD'
              'CELL+'
              'CELLS'
              'CHAR+'
              'CHARS'
              'MOVE'
              'ERASE'
              'DABS'
              'TITLE'
              'HEX'
              'DECIMAL'
              'HOLD'
              '<#'
              '#'
              '#S'
              '#>'
              'SIGN'
              'D.'
              '.'
              'U.'
              'DUMP'
              '(.")'
              '>NUMBER'
              #39
              'IMMEDIATE'
              'EXIT'
              'RECURSE'
              'UNLOOP'
              'LEAVE'
              'HERE'
              'ALLOT'
              ','
              'C,'
              'W,'
              'COMPILE,'
              'BRANCH,'
              'RET,'
              'LIT,'
              'DLIT,'
              '?BRANCH,'
              ','
              '>MARK'
              '>RESOLVE1'
              '<MARK'
              '>RESOLVE'
              'ALIGN'
              'ALIGNED'
              'USER-ALLOT'
              'USER-HERE'
              'HEADER'
              'DOES>'
              'SMUDGE'
              'HIDE'
              ':NONAME'
              'LAST-WORD'
              '?ERROR'
              'ERROR2'
              'FIND1'
              'SFIND'
              'SET-CURRENT'
              'GET-CURRENT'
              'DEFINITIONS'
              'GET-ORDER'
              'FORTH'
              'ONLY'
              'SET-ORDER'
              'ALSO'
              'PREVIOUS'
              'VOC-NAME.'
              'ORDER'
              'LATEST'
              'LITERAL'
              '2LITERAL'
              'SLITERAL'
              'CLITERAL'
              '?LITERAL1'
              '?SLITERAL1'
              'HEX-LITERAL'
              'HEX-SLITERAL'
              '?LITERAL2'
              '?SLITERAL2'
              'SOURCE'
              'EndOfChunk'
              'CharAddr'
              'PeekChar'
              'IsDelimiter'
              'GetChar'
              'OnDelimiter'
              'SkipDelimiters'
              'OnNotDelimiter'
              'SkipWord'
              'SkipUpTo'
              'ParseWord'
              'NextWord'
              'PARSE'
              'SKIP'
              'CONSOLE-HANDLES'
              'REFILL'
              'DEPTH'
              '?STACK'
              '?COMP'
              'WORD'
              'INTERPRET'
              'BYE'
              'QUIT'
              'MAIN1'
              'EVALUATE'
              'INCLUDE-FILE'
              'INCLUDED'
              '>BODY'
              '+WORD'
              'WORDLIST'
              'CLASS!'
              'CLASS@'
              'PAR!'
              'PAR@'
              'ID.'
              '?IMMEDIATE'
              '?VOC'
              'IMMEDIATE'
              'VOC'
              'WordByAddrWl'
              'WordByAddr'
              'NLIST'
              'WORDS'
              'SAVE'
              'OPTIONS'
              '/notransl'
              'ANSI>OEM'
              'ACCEPT'
              'EMIT'
              'CR'
              'TYPE'
              'EKEY?'
              'EKEY'
              'EKEY>CHAR'
              'EXTERNTASK'
              'ERASE-IMPORTS'
              'ModuleName'
              'ModuleDirName'
              'ENVIRONMENT?'
              'DROP-EXC-HANDLER'
              'SET-EXC-HANDLER'
              'HALT'
              'ERR'
              'CLOSE-FILE'
              'CREATE-FILE'
              'CREATE-FILE-SHARED'
              'OPEN-FILE-SHARED'
              'DELETE-FILE'
              'FILE-POSITION'
              'FILE-SIZE'
              'OPEN-FILE'
              'READ-FILE'
              'REPOSITION-FILE'
              'DOS-LINES'
              'UNIX-LINES'
              'READ-LINE'
              'WRITE-FILE'
              'RESIZE-FILE'
              'WRITE-LINE'
              'ALLOCATE'
              'FREE'
              'RESIZE'
              'START'
              'SUSPEND'
              'RESUME'
              'STOP'
              'PAUSE'
              'MIN'
              'MAX'
              'TRUE'
              'FALSE'
              'ASCIIZ>'
              'R/O'
              'W/O'
              ';CLASS'
              'ENDWITH'
              'OR'
              'AND'
              '/STRING'
              'SEARCH'
              'COMPARE'
              'EXPORT'
              ';MODULE'
              'SPAC')
          end
          item
            KeywordListNumber = 2
            Name = 'Definition Words'
            Keywords.Strings = (
              'VARIABLE'
              'CREATE'
              ':'
              'VALUE'
              'CONSTANT'
              'VM:'
              'M:'
              'var'
              'dvar'
              'chars'
              'OBJ'
              'CONSTR:'
              'DESTR:'
              'CLASS:'
              'OBJECT:'
              'POINTER'
              'USER'
              'USER-CREATE'
              'USER-VALUE'
              'VECT'
              'WNDPROC:'
              'VOCABULARY'
              '--'
              'TASK:'
              'CEZ:'
              'MODULE:')
          end
          item
            KeywordListNumber = 3
            Name = 'Prewords with one argument'
            Keywords.Strings = (
              'CHAR'
              '[CHAR]'
              'POSTPONE'
              'WITH'
              '['#39']'
              'TO'
              '[COMPILE]'
              'CHAR'
              'ASCII'
              '\'#39)
          end
          item
            KeywordListNumber = 4
            Name = 'Prewords with two arguments'
            Keywords.Strings = (
              'REQUIRE'
              'WINAPI:')
          end
          item
            KeywordListNumber = 5
            Name = 'String definition keywords'
            Keywords.Strings = (
              'S"'
              'ABORT"'
              'Z"'
              '.'
              'C"')
          end>
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
      end
      item
        Name = 'Fortran'
        Lexer = 'fortran'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String 1'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String 2'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            Name = 'String not closed'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Primary keywords and identifiers'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Intrinsic functions'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Extended and user defined functions'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator 2'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Continuation'
            StyleNumber = 14
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Primary keywords and identifiers'
            Keywords.Strings = (
              'access'
              'action'
              'advance'
              'allocatable'
              'allocate'
              'apostrophe'
              'assign'
              'assignment'
              'associate'
              'asynchronous'
              'backspace'
              'bind'
              'blank'
              'blockdata'
              'call'
              'case'
              'character'
              'class'
              'close'
              'common'
              'complex'
              'contains'
              'continue'
              'cycle'
              'data'
              'deallocate'
              'decimal'
              'delim'
              'default'
              'dimension'
              'direct'
              'do'
              'dowhile'
              'double'
              'doubleprecision'
              'else'
              'elseif'
              'elsewhere'
              'encoding'
              'end'
              'endassociate'
              'endblockdata'
              'enddo'
              'endfile'
              'endforall'
              'endfunction'
              'endif'
              'endinterface'
              'endmodule'
              'endprogram'
              'endselect'
              'endsubroutine'
              'endtype'
              'endwhere'
              'entry'
              'eor'
              'equivalence'
              'err'
              'errmsg'
              'exist'
              'exit'
              'external'
              'file'
              'flush'
              'fmt'
              'forall'
              'form'
              'format'
              'formatted'
              'function'
              'go'
              'goto'
              'id'
              'if'
              'implicit'
              'in'
              'include'
              'inout'
              'integer'
              'inquire'
              'intent'
              'interface'
              'intrinsic'
              'iomsg'
              'iolength'
              'iostat'
              'kind'
              'len'
              'logical'
              'module'
              'name'
              'named'
              'namelist'
              'nextrec'
              'nml'
              'none'
              'nullify'
              'number'
              'only'
              'open'
              'opened'
              'operator'
              'optional'
              'out'
              'pad'
              'parameter'
              'pass'
              'pause'
              'pending'
              'pointer'
              'pos'
              'position'
              'precision'
              'print'
              'private'
              'program'
              'protected'
              'public'
              'quote'
              'read'
              'readwrite'
              'real'
              'rec'
              'recl'
              'recursive'
              'result'
              'return'
              'rewind'
              'save'
              'select'
              'selectcase'
              'selecttype'
              'sequential'
              'sign'
              'size'
              'stat'
              'status'
              'stop'
              'stream'
              'subroutine'
              'target'
              'then'
              'to'
              'type'
              'unformatted'
              'unit'
              'use'
              'value'
              'volatile'
              'wait'
              'where'
              'while'
              'write')
          end
          item
            KeywordListNumber = 1
            Name = 'Intrinsic functions'
            Keywords.Strings = (
              'abs'
              'achar'
              'acos'
              'acosd'
              'adjustl'
              'adjustr'
              'aimag'
              'aimax0'
              'aimin0'
              'aint'
              'ajmax0'
              'ajmin0'
              'akmax0'
              'akmin0'
              'all'
              'allocated'
              'alog'
              'alog10'
              'amax0'
              'amax1'
              'amin0'
              'amin1'
              'amod'
              'anint'
              'any'
              'asin'
              'asind'
              'associated'
              'atan'
              'atan2'
              'atan2d'
              'atand'
              'bitest'
              'bitl'
              'bitlr'
              'bitrl'
              'bjtest'
              'bit_size'
              'bktest'
              'break'
              'btest'
              'cabs'
              'ccos'
              'cdabs'
              'cdcos'
              'cdexp'
              'cdlog'
              'cdsin'
              'cdsqrt'
              'ceiling'
              'cexp'
              'char'
              'clog'
              'cmplx'
              'conjg'
              'cos'
              'cosd'
              'cosh'
              'count'
              'cpu_time'
              'cshift'
              'csin'
              'csqrt'
              'dabs'
              'dacos'
              'dacosd'
              'dasin'
              'dasind'
              'datan'
              'datan2'
              'datan2d'
              'datand'
              'date'
              'date_and_time'
              'dble'
              'dcmplx'
              'dconjg'
              'dcos'
              'dcosd'
              'dcosh'
              'dcotan'
              'ddim'
              'dexp'
              'dfloat'
              'dflotk'
              'dfloti'
              'dflotj'
              'digits'
              'dim'
              'dimag'
              'dint'
              'dlog'
              'dlog10'
              'dmax1'
              'dmin1'
              'dmod'
              'dnint'
              'dot_product'
              'dprod'
              'dreal'
              'dsign'
              'dsin'
              'dsind'
              'dsinh'
              'dsqrt'
              'dtan'
              'dtand'
              'dtanh'
              'eoshift'
              'epsilon'
              'errsns'
              'exp'
              'exponent'
              'float'
              'floati'
              'floatj'
              'floatk'
              'floor'
              'fraction'
              'free'
              'huge'
              'iabs'
              'iachar'
              'iand'
              'ibclr'
              'ibits'
              'ibset'
              'ichar'
              'idate'
              'idim'
              'idint'
              'idnint'
              'ieor'
              'ifix'
              'iiabs'
              'iiand'
              'iibclr'
              'iibits'
              'iibset'
              'iidim'
              'iidint'
              'iidnnt'
              'iieor'
              'iifix'
              'iint'
              'iior'
              'iiqint'
              'iiqnnt'
              'iishft'
              'iishftc'
              'iisign'
              'ilen'
              'imax0'
              'imax1'
              'imin0'
              'imin1'
              'imod'
              'index'
              'inint'
              'inot'
              'int'
              'int1'
              'int2'
              'int4'
              'int8'
              'iqint'
              'iqnint'
              'ior'
              'ishft'
              'ishftc'
              'isign'
              'isnan'
              'izext'
              'jiand'
              'jibclr'
              'jibits'
              'jibset'
              'jidim'
              'jidint'
              'jidnnt'
              'jieor'
              'jifix'
              'jint'
              'jior'
              'jiqint'
              'jiqnnt'
              'jishft'
              'jishftc'
              'jisign'
              'jmax0'
              'jmax1'
              'jmin0'
              'jmin1'
              'jmod'
              'jnint'
              'jnot'
              'jzext'
              'kiabs'
              'kiand'
              'kibclr'
              'kibits'
              'kibset'
              'kidim'
              'kidint'
              'kidnnt'
              'kieor'
              'kifix'
              'kind'
              'kint'
              'kior'
              'kishft'
              'kishftc'
              'kisign'
              'kmax0'
              'kmax1'
              'kmin0'
              'kmin1'
              'kmod'
              'knint'
              'knot'
              'kzext'
              'lbound'
              'leadz'
              'len'
              'len_trim'
              'lenlge'
              'lge'
              'lgt'
              'lle'
              'llt'
              'log'
              'log10'
              'logical'
              'lshift'
              'malloc'
              'matmul'
              'max'
              'max0'
              'max1'
              'maxexponent'
              'maxloc'
              'maxval'
              'merge'
              'min'
              'min0'
              'min1'
              'minexponent'
              'minloc'
              'minval'
              'mod'
              'modulo'
              'mvbits'
              'nearest'
              'nint'
              'not'
              'nworkers'
              'number_of_processors'
              'pack'
              'popcnt'
              'poppar'
              'precision'
              'present'
              'product'
              'radix'
              'random'
              'random_number'
              'random_seed'
              'range'
              'real'
              'repeat'
              'reshape'
              'rrspacing'
              'rshift'
              'scale'
              'scan'
              'secnds'
              'selected_int_kind'
              'selected_real_kind'
              'set_exponent'
              'shape'
              'sign'
              'sin'
              'sind'
              'sinh'
              'size'
              'sizeof'
              'sngl'
              'snglq'
              'spacing'
              'spread'
              'sqrt'
              'sum'
              'system_clock'
              'tan'
              'tand'
              'tanh'
              'tiny'
              'transfer'
              'transpose'
              'trim'
              'ubound'
              'unpack'
              'verify+')
          end
          item
            KeywordListNumber = 2
            Name = 'Extended and user defined functions'
            Keywords.Strings = (
              'cdabs'
              'cdcos'
              'cdexp'
              'cdlog'
              'cdsin'
              'cdsqrt'
              'cotan'
              'cotand'
              'dcmplx'
              'dconjg'
              'dcotan'
              'dcotand'
              'decode'
              'dimag'
              'dll_export'
              'dll_import'
              'doublecomplex'
              'dreal'
              'dvchk'
              'encode'
              'find'
              'flen'
              'flush'
              'getarg'
              'getcharqq'
              'getcl'
              'getdat'
              'getenv'
              'gettim'
              'hfix'
              'ibchng'
              'identifier'
              'imag'
              'int1'
              'int2'
              'int4'
              'intc'
              'intrup'
              'invalop'
              'iostat_msg'
              'isha'
              'ishc'
              'ishl'
              'jfix'
              'lacfar'
              'locking'
              'locnear'
              'map'
              'nargs'
              'nbreak'
              'ndperr'
              'ndpexc'
              'offset'
              'ovefl'
              'peekcharqq'
              'precfill'
              'prompt'
              'qabs'
              'qacos'
              'qacosd'
              'qasin'
              'qasind'
              'qatan'
              'qatand'
              'qatan2'
              'qcmplx'
              'qconjg'
              'qcos'
              'qcosd'
              'qcosh'
              'qdim'
              'qexp'
              'qext'
              'qextd'
              'qfloat'
              'qimag'
              'qlog'
              'qlog10'
              'qmax1'
              'qmin1'
              'qmod'
              'qreal'
              'qsign'
              'qsin'
              'qsind'
              'qsinh'
              'qsqrt'
              'qtan'
              'qtand'
              'qtanh'
              'ran'
              'rand'
              'randu'
              'rewrite'
              'segment'
              'setdat'
              'settim'
              'system'
              'timer'
              'undfl'
              'unlock'
              'union'
              'val'
              'virtual'
              'volatile'
              'zabs'
              'zcos'
              'zexp'
              'zlog'
              'zsin'
              'zsqrt')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '!~'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'Fortran77'
        Lexer = 'f77'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String 1'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String 2'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            Name = 'String not closed'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Primary keywords and identifiers'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Intrinsic functions'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Extended and user defined functions'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator 2'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Continuation'
            StyleNumber = 14
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Primary keywords and identifiers'
            Keywords.Strings = (
              'access'
              'action'
              'advance'
              'allocatable'
              'allocate'
              'apostrophe'
              'assign'
              'assignment'
              'associate'
              'asynchronous'
              'backspace'
              'bind'
              'blank'
              'blockdata'
              'call'
              'case'
              'character'
              'class'
              'close'
              'common'
              'complex'
              'contains'
              'continue'
              'cycle'
              'data'
              'deallocate'
              'decimal'
              'delim'
              'default'
              'dimension'
              'direct'
              'do'
              'dowhile'
              'double'
              'doubleprecision'
              'else'
              'elseif'
              'elsewhere'
              'encoding'
              'end'
              'endassociate'
              'endblockdata'
              'enddo'
              'endfile'
              'endforall'
              'endfunction'
              'endif'
              'endinterface'
              'endmodule'
              'endprogram'
              'endselect'
              'endsubroutine'
              'endtype'
              'endwhere'
              'entry'
              'eor'
              'equivalence'
              'err'
              'errmsg'
              'exist'
              'exit'
              'external'
              'file'
              'flush'
              'fmt'
              'forall'
              'form'
              'format'
              'formatted'
              'function'
              'go'
              'goto'
              'id'
              'if'
              'implicit'
              'in'
              'include'
              'inout'
              'integer'
              'inquire'
              'intent'
              'interface'
              'intrinsic'
              'iomsg'
              'iolength'
              'iostat'
              'kind'
              'len'
              'logical'
              'module'
              'name'
              'named'
              'namelist'
              'nextrec'
              'nml'
              'none'
              'nullify'
              'number'
              'only'
              'open'
              'opened'
              'operator'
              'optional'
              'out'
              'pad'
              'parameter'
              'pass'
              'pause'
              'pending'
              'pointer'
              'pos'
              'position'
              'precision'
              'print'
              'private'
              'program'
              'protected'
              'public'
              'quote'
              'read'
              'readwrite'
              'real'
              'rec'
              'recl'
              'recursive'
              'result'
              'return'
              'rewind'
              'save'
              'select'
              'selectcase'
              'selecttype'
              'sequential'
              'sign'
              'size'
              'stat'
              'status'
              'stop'
              'stream'
              'subroutine'
              'target'
              'then'
              'to'
              'type'
              'unformatted'
              'unit'
              'use'
              'value'
              'volatile'
              'wait'
              'where'
              'while'
              'write')
          end
          item
            KeywordListNumber = 1
            Name = 'Intrinsic functions'
            Keywords.Strings = (
              'abs'
              'achar'
              'acos'
              'acosd'
              'adjustl'
              'adjustr'
              'aimag'
              'aimax0'
              'aimin0'
              'aint'
              'ajmax0'
              'ajmin0'
              'akmax0'
              'akmin0'
              'all'
              'allocated'
              'alog'
              'alog10'
              'amax0'
              'amax1'
              'amin0'
              'amin1'
              'amod'
              'anint'
              'any'
              'asin'
              'asind'
              'associated'
              'atan'
              'atan2'
              'atan2d'
              'atand'
              'bitest'
              'bitl'
              'bitlr'
              'bitrl'
              'bjtest'
              'bit_size'
              'bktest'
              'break'
              'btest'
              'cabs'
              'ccos'
              'cdabs'
              'cdcos'
              'cdexp'
              'cdlog'
              'cdsin'
              'cdsqrt'
              'ceiling'
              'cexp'
              'char'
              'clog'
              'cmplx'
              'conjg'
              'cos'
              'cosd'
              'cosh'
              'count'
              'cpu_time'
              'cshift'
              'csin'
              'csqrt'
              'dabs'
              'dacos'
              'dacosd'
              'dasin'
              'dasind'
              'datan'
              'datan2'
              'datan2d'
              'datand'
              'date'
              'date_and_time'
              'dble'
              'dcmplx'
              'dconjg'
              'dcos'
              'dcosd'
              'dcosh'
              'dcotan'
              'ddim'
              'dexp'
              'dfloat'
              'dflotk'
              'dfloti'
              'dflotj'
              'digits'
              'dim'
              'dimag'
              'dint'
              'dlog'
              'dlog10'
              'dmax1'
              'dmin1'
              'dmod'
              'dnint'
              'dot_product'
              'dprod'
              'dreal'
              'dsign'
              'dsin'
              'dsind'
              'dsinh'
              'dsqrt'
              'dtan'
              'dtand'
              'dtanh'
              'eoshift'
              'epsilon'
              'errsns'
              'exp'
              'exponent'
              'float'
              'floati'
              'floatj'
              'floatk'
              'floor'
              'fraction'
              'free'
              'huge'
              'iabs'
              'iachar'
              'iand'
              'ibclr'
              'ibits'
              'ibset'
              'ichar'
              'idate'
              'idim'
              'idint'
              'idnint'
              'ieor'
              'ifix'
              'iiabs'
              'iiand'
              'iibclr'
              'iibits'
              'iibset'
              'iidim'
              'iidint'
              'iidnnt'
              'iieor'
              'iifix'
              'iint'
              'iior'
              'iiqint'
              'iiqnnt'
              'iishft'
              'iishftc'
              'iisign'
              'ilen'
              'imax0'
              'imax1'
              'imin0'
              'imin1'
              'imod'
              'index'
              'inint'
              'inot'
              'int'
              'int1'
              'int2'
              'int4'
              'int8'
              'iqint'
              'iqnint'
              'ior'
              'ishft'
              'ishftc'
              'isign'
              'isnan'
              'izext'
              'jiand'
              'jibclr'
              'jibits'
              'jibset'
              'jidim'
              'jidint'
              'jidnnt'
              'jieor'
              'jifix'
              'jint'
              'jior'
              'jiqint'
              'jiqnnt'
              'jishft'
              'jishftc'
              'jisign'
              'jmax0'
              'jmax1'
              'jmin0'
              'jmin1'
              'jmod'
              'jnint'
              'jnot'
              'jzext'
              'kiabs'
              'kiand'
              'kibclr'
              'kibits'
              'kibset'
              'kidim'
              'kidint'
              'kidnnt'
              'kieor'
              'kifix'
              'kind'
              'kint'
              'kior'
              'kishft'
              'kishftc'
              'kisign'
              'kmax0'
              'kmax1'
              'kmin0'
              'kmin1'
              'kmod'
              'knint'
              'knot'
              'kzext'
              'lbound'
              'leadz'
              'len'
              'len_trim'
              'lenlge'
              'lge'
              'lgt'
              'lle'
              'llt'
              'log'
              'log10'
              'logical'
              'lshift'
              'malloc'
              'matmul'
              'max'
              'max0'
              'max1'
              'maxexponent'
              'maxloc'
              'maxval'
              'merge'
              'min'
              'min0'
              'min1'
              'minexponent'
              'minloc'
              'minval'
              'mod'
              'modulo'
              'mvbits'
              'nearest'
              'nint'
              'not'
              'nworkers'
              'number_of_processors'
              'pack'
              'popcnt'
              'poppar'
              'precision'
              'present'
              'product'
              'radix'
              'random'
              'random_number'
              'random_seed'
              'range'
              'real'
              'repeat'
              'reshape'
              'rrspacing'
              'rshift'
              'scale'
              'scan'
              'secnds'
              'selected_int_kind'
              'selected_real_kind'
              'set_exponent'
              'shape'
              'sign'
              'sin'
              'sind'
              'sinh'
              'size'
              'sizeof'
              'sngl'
              'snglq'
              'spacing'
              'spread'
              'sqrt'
              'sum'
              'system_clock'
              'tan'
              'tand'
              'tanh'
              'tiny'
              'transfer'
              'transpose'
              'trim'
              'ubound'
              'unpack'
              'verify+')
          end
          item
            KeywordListNumber = 2
            Name = 'Extended and user defined functions'
            Keywords.Strings = (
              'cdabs'
              'cdcos'
              'cdexp'
              'cdlog'
              'cdsin'
              'cdsqrt'
              'cotan'
              'cotand'
              'dcmplx'
              'dconjg'
              'dcotan'
              'dcotand'
              'decode'
              'dimag'
              'dll_export'
              'dll_import'
              'doublecomplex'
              'dreal'
              'dvchk'
              'encode'
              'find'
              'flen'
              'flush'
              'getarg'
              'getcharqq'
              'getcl'
              'getdat'
              'getenv'
              'gettim'
              'hfix'
              'ibchng'
              'identifier'
              'imag'
              'int1'
              'int2'
              'int4'
              'intc'
              'intrup'
              'invalop'
              'iostat_msg'
              'isha'
              'ishc'
              'ishl'
              'jfix'
              'lacfar'
              'locking'
              'locnear'
              'map'
              'nargs'
              'nbreak'
              'ndperr'
              'ndpexc'
              'offset'
              'ovefl'
              'peekcharqq'
              'precfill'
              'prompt'
              'qabs'
              'qacos'
              'qacosd'
              'qasin'
              'qasind'
              'qatan'
              'qatand'
              'qatan2'
              'qcmplx'
              'qconjg'
              'qcos'
              'qcosd'
              'qcosh'
              'qdim'
              'qexp'
              'qext'
              'qextd'
              'qfloat'
              'qimag'
              'qlog'
              'qlog10'
              'qmax1'
              'qmin1'
              'qmod'
              'qreal'
              'qsign'
              'qsin'
              'qsind'
              'qsinh'
              'qsqrt'
              'qtan'
              'qtand'
              'qtanh'
              'ran'
              'rand'
              'randu'
              'rewrite'
              'segment'
              'setdat'
              'settim'
              'system'
              'timer'
              'undfl'
              'unlock'
              'union'
              'val'
              'virtual'
              'volatile'
              'zabs'
              'zcos'
              'zexp'
              'zlog'
              'zsin'
              'zsqrt')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '!~'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'FreeBasic'
        Lexer = 'freebasic'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PreProcessor'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Date'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String not terminated'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PreProcessor Keywords'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Defined 1'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Defined 2'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Constant'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Asm'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clRed
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'HexNumber'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'BinNumber'
            StyleNumber = 18
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'append'
              'as'
              'asc'
              'asin'
              'asm'
              'atan2'
              'atn'
              'beep'
              'bin'
              'binary'
              'bit'
              'bitreset'
              'bitset'
              'bload'
              'bsave'
              'byref'
              'byte'
              'byval'
              'call'
              'callocate'
              'case'
              'cbyte'
              'cdbl'
              'cdecl'
              'chain'
              'chdir'
              'chr'
              'cint'
              'circle'
              'clear'
              'clng'
              'clngint'
              'close'
              'cls'
              'color'
              'command'
              'common'
              'cons'
              'const'
              'continue'
              'cos'
              'cshort'
              'csign'
              'csng'
              'csrlin'
              'cubyte'
              'cuint'
              'culngint'
              'cunsg'
              'curdir'
              'cushort'
              'custom'
              'cvd'
              'cvi'
              'cvl'
              'cvlongint'
              'cvs'
              'cvshort'
              'data'
              'date'
              'deallocate'
              'declare'
              'defbyte'
              'defdbl'
              'defined'
              'defint'
              'deflng'
              'deflngint'
              'defshort'
              'defsng'
              'defstr'
              'defubyte'
              'defuint'
              'defulngint'
              'defushort'
              'dim'
              'dir'
              'do'
              'double'
              'draw'
              'dylibload'
              'dylibsymbol'
              'else'
              'elseif'
              'end'
              'enum'
              'environ'
              'environ$'
              'eof'
              'eqv'
              'erase'
              'err'
              'error'
              'exec'
              'exepath'
              'exit'
              'exp'
              'export'
              'extern'
              'field'
              'fix'
              'flip'
              'for'
              'fre'
              'freefile'
              'function'
              'get'
              'getjoystick'
              'getkey'
              'getmouse'
              'gosub'
              'goto'
              'hex'
              'hibyte'
              'hiword'
              'if'
              'iif'
              'imagecreate'
              'imagedestroy'
              'imp'
              'inkey'
              'inp'
              'input'
              'instr'
              'int'
              'integer'
              'is'
              'kill'
              'lbound'
              'lcase'
              'left'
              'len'
              'let'
              'lib'
              'line'
              'lobyte'
              'loc'
              'local'
              'locate'
              'lock'
              'lof'
              'log'
              'long'
              'longint'
              'loop'
              'loword'
              'lset'
              'ltrim'
              'mid'
              'mkd'
              'mkdir'
              'mki'
              'mkl'
              'mklongint'
              'mks'
              'mkshort'
              'mod'
              'multikey'
              'mutexcreate'
              'mutexdestroy'
              'mutexlock'
              'mutexunlock'
              'name'
              'next'
              'not'
              'oct'
              'on'
              'once'
              'open'
              'option'
              'or'
              'out'
              'output'
              'overload'
              'paint'
              'palette'
              'pascal'
              'pcopy'
              'peek'
              'peeki'
              'peeks'
              'pipe'
              'pmap'
              'point'
              'pointer'
              'poke'
              'pokei'
              'pokes'
              'pos'
              'preserve'
              'preset'
              'print'
              'private'
              'procptr'
              'pset'
              'ptr'
              'public'
              'put'
              'random'
              'randomize'
              'read'
              'reallocate'
              'redim'
              'rem'
              'reset'
              'restore'
              'resume'
              'resume'
              'next'
              'return'
              'rgb'
              'rgba'
              'right'
              'rmdir'
              'rnd'
              'rset'
              'rtrim'
              'run'
              'sadd'
              'screen'
              'screencopy'
              'screeninfo'
              'screenlock'
              'screenptr'
              'screenres'
              'screenset'
              'screensync'
              'screenunlock'
              'seek'
              'statement'
              'seek'
              'function'
              'selectcase'
              'setdate'
              'setenviron'
              'setmouse'
              'settime'
              'sgn'
              'shared'
              'shell'
              'shl'
              'short'
              'shr'
              'sin'
              'single'
              'sizeof'
              'sleep'
              'space'
              'spc'
              'sqr'
              'static'
              'stdcall'
              'step'
              'stop'
              'str'
              'string'
              'string'
              'strptr'
              'sub'
              'swap'
              'system'
              'tab'
              'tan'
              'then'
              'threadcreate'
              'threadwait'
              'time'
              'time'
              'timer'
              'to'
              'trans'
              'trim'
              'type'
              'ubound'
              'ubyte'
              'ucase'
              'uinteger'
              'ulongint'
              'union'
              'unlock'
              'unsigned'
              'until'
              'ushort'
              'using'
              'va_arg'
              'va_first'
              'va_next'
              'val'
              'val64'
              'valint'
              'varptr'
              'view'
              'viewprint'
              'wait'
              'wend'
              'while'
              'width'
              'window'
              'windowtitle'
              'with'
              'write'
              'xor'
              'zstring')
          end
          item
            KeywordListNumber = 1
            Name = 'PreProcessor'
            Keywords.Strings = (
              '#define'
              '#dynamic'
              '#else'
              '#endif'
              '#error'
              '#if'
              '#ifdef'
              '#ifndef'
              '#inclib'
              '#include'
              '#print'
              '#static'
              '#undef')
          end
          item
            KeywordListNumber = 2
            Name = 'User Defined 1'
          end
          item
            KeywordListNumber = 3
            Name = 'User Defined 2'
          end>
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
      end
      item
        Name = 'Haskell'
        Lexer = 'haskell'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Character'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Class'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Module'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Capital'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Data'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Import'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Instance'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Commentline'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Commentblock'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Commentblock 2'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Commentblock 3'
            StyleNumber = 16
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
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
      end
      item
        Name = 'HTML'
        Lexer = 'hypertext'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Text'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tags'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Tags'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attributes'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Attributes'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numbers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted strings'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted strings'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other inside tag'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 9
          end
          item
            FontName = 'Times New Roman'
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 10526880
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Entities'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12632064
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML style tag ends'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier start'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier end'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15132160
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SCRIPT'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP <% ... %>'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP <% ... %>'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 57343
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'CDATA'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 56797
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unquoted values'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XC Comment'
            StyleNumber = 20
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML tags <! ... >'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML command'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15793935
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML 1st param'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML double string'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML single string'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML error'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16737843
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML special'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML entity'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML comment'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlue
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML block'
            StyleNumber = 31
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 32639
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Start'
            StyleNumber = 40
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Default'
            StyleNumber = 41
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Comment'
            StyleNumber = 42
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Line Comment'
            StyleNumber = 43
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Doc Comment'
            StyleNumber = 44
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Number'
            StyleNumber = 45
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Word'
            StyleNumber = 46
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Keyword'
            StyleNumber = 47
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Double quoted string'
            StyleNumber = 48
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Single quoted string'
            StyleNumber = 49
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Symbols'
            StyleNumber = 50
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS EOL'
            StyleNumber = 51
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Regex'
            StyleNumber = 52
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 32639
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Start'
            StyleNumber = 55
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Default'
            StyleNumber = 56
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Comment'
            StyleNumber = 57
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Line Comment'
            StyleNumber = 58
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Doc Comment'
            StyleNumber = 59
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Number'
            StyleNumber = 60
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 14737632
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Word'
            StyleNumber = 61
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Keyword'
            StyleNumber = 62
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Double quoted string'
            StyleNumber = 63
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Single quoted string'
            StyleNumber = 64
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Symbols'
            StyleNumber = 65
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP JS EOL'
            StyleNumber = 66
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP JS Regex'
            StyleNumber = 67
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Default'
            StyleNumber = 71
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Comment'
            StyleNumber = 72
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Number'
            StyleNumber = 73
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS KeyWord'
            StyleNumber = 74
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS String'
            StyleNumber = 75
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Identifier'
            StyleNumber = 76
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Unterminated string'
            StyleNumber = 77
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Default'
            StyleNumber = 81
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Comment'
            StyleNumber = 82
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Number'
            StyleNumber = 83
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP KeyWord'
            StyleNumber = 84
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP String'
            StyleNumber = 85
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Identifier'
            StyleNumber = 86
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Unterminated string'
            StyleNumber = 87
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Python Start'
            StyleNumber = 90
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Default'
            StyleNumber = 91
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Comment'
            StyleNumber = 92
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Number'
            StyleNumber = 93
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python String'
            StyleNumber = 94
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Single quoted string'
            StyleNumber = 95
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Keyword'
            StyleNumber = 96
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Triple quotes'
            StyleNumber = 97
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Triple double quotes'
            StyleNumber = 98
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clBlue
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Class name definition'
            StyleNumber = 99
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 8355584
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python function or method name definition'
            StyleNumber = 100
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python function or method name definition'
            StyleNumber = 101
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Identifiers'
            StyleNumber = 102
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Complex Variable'
            StyleNumber = 104
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'ASP Python Start'
            StyleNumber = 105
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Default'
            StyleNumber = 106
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Comment'
            StyleNumber = 107
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Number'
            StyleNumber = 108
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python String'
            StyleNumber = 109
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Single quoted string'
            StyleNumber = 110
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Keyword'
            StyleNumber = 111
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = 13627343
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Triple quotes'
            StyleNumber = 112
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = 13627343
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Triple double quotes'
            StyleNumber = 113
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clBlue
            BackColor = 13627343
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Class name definition'
            StyleNumber = 114
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 8355584
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python function or method name definition'
            StyleNumber = 115
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = 13627343
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python function or method name definition'
            StyleNumber = 116
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = 13627343
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'ASP Python Identifiers'
            StyleNumber = 117
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'PHP Default'
            StyleNumber = 118
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Double quoted string'
            StyleNumber = 119
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Single quoted string'
            StyleNumber = 120
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Keyword'
            StyleNumber = 121
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Number'
            StyleNumber = 122
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Variable'
            StyleNumber = 123
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Comment'
            StyleNumber = 124
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP One line Comment'
            StyleNumber = 125
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Variable in double quoted string'
            StyleNumber = 126
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP operator'
            StyleNumber = 127
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'HyperText'
            Keywords.Strings = (
              'a'
              'abbr'
              'acronym'
              'address'
              'applet'
              'area'
              'b'
              'base'
              'basefont'
              'bdo'
              'big'
              'blockquote'
              'body'
              'br'
              'button'
              'caption'
              'center'
              'cite'
              'code'
              'col'
              'colgroup'
              'dd'
              'del'
              'dfn'
              'dir'
              'div'
              'dl'
              'dt'
              'em'
              'fieldset'
              'font'
              'form'
              'frame'
              'frameset'
              'h1'
              'h2'
              'h3'
              'h4'
              'h5'
              'h6'
              'head'
              'hr'
              'html'
              'i'
              'iframe'
              'img'
              'input'
              'ins'
              'isindex'
              'kbd'
              'label'
              'legend'
              'li'
              'link'
              'map'
              'menu'
              'meta'
              'noframes'
              'noscript'
              'object'
              'ol'
              'optgroup'
              'option'
              'p'
              'param'
              'pre'
              'q'
              's'
              'samp'
              'script'
              'select'
              'small'
              'span'
              'strike'
              'strong'
              'style'
              'sub'
              'sup'
              'table'
              'tbody'
              'td'
              'textarea'
              'tfoot'
              'th'
              'thead'
              'title'
              'tr'
              'tt'
              'u'
              'ul'
              'var'
              'xml'
              'xmlns'
              'abbr'
              'accept-charset'
              'accept'
              'accesskey'
              'action'
              'align'
              'alink'
              'alt'
              'archive'
              'axis'
              'background'
              'bgcolor'
              'border'
              'cellpadding'
              'cellspacing'
              'char'
              'charoff'
              'charset'
              'checked'
              'cite'
              'class'
              'classid'
              'clear'
              'codebase'
              'codetype'
              'color'
              'cols'
              'colspan'
              'compact'
              'content'
              'coords'
              'data'
              'datafld'
              'dataformatas'
              'datapagesize'
              'datasrc'
              'datetime'
              'declare'
              'defer'
              'dir'
              'disabled'
              'enctype'
              'event'
              'face'
              'for'
              'frame'
              'frameborder'
              'headers'
              'height'
              'href'
              'hreflang'
              'hspace'
              'http-equiv'
              'id'
              'ismap'
              'label'
              'lang'
              'language'
              'leftmargin'
              'link'
              'longdesc'
              'marginwidth'
              'marginheight'
              'maxlength'
              'media'
              'method'
              'multiple'
              'name'
              'nohref'
              'noresize'
              'noshade'
              'nowrap'
              'object'
              'onblur'
              'onchange'
              'onclick'
              'ondblclick'
              'onfocus'
              'onkeydown'
              'onkeypress'
              'onkeyup'
              'onload'
              'onmousedown'
              'onmousemove'
              'onmouseover'
              'onmouseout'
              'onmouseup'
              'onreset'
              'onselect'
              'onsubmit'
              'onunload'
              'profile'
              'prompt'
              'readonly'
              'rel'
              'rev'
              'rows'
              'rowspan'
              'rules'
              'scheme'
              'scope'
              'selected'
              'shape'
              'size'
              'span'
              'src'
              'standby'
              'start'
              'style'
              'summary'
              'tabindex'
              'target'
              'text'
              'title'
              'topmargin'
              'type'
              'usemap'
              'valign'
              'value'
              'valuetype'
              'version'
              'vlink'
              'vspace'
              'width'
              'text'
              'password'
              'checkbox'
              'radio'
              'submit'
              'reset'
              'file'
              'hidden'
              'image'
              'framespacing'
              'scrolling'
              'allowtransparency'
              'bordercolor')
          end
          item
            KeywordListNumber = 1
            Name = 'JavaScript'
            Keywords.Strings = (
              'abstract'
              'boolean'
              'break'
              'byte'
              'case'
              'catch'
              'char'
              'class'
              'const'
              'continue'
              'debugger'
              'default'
              'delete'
              'do'
              'double'
              'else'
              'enum'
              'export'
              'extends'
              'final'
              'finally'
              'float'
              'for'
              'function'
              'goto'
              'if'
              'implements'
              'import'
              'in'
              'instanceof'
              'int'
              'interface'
              'long'
              'native'
              'new'
              'package'
              'private'
              'protected'
              'public'
              'return'
              'short'
              'static'
              'super'
              'switch'
              'synchronized'
              'this'
              'throw'
              'throws'
              'transient'
              'try'
              'typeof'
              'var'
              'void'
              'volatile'
              'while'
              'with')
          end
          item
            KeywordListNumber = 2
            Name = 'VBScript'
            Keywords.Strings = (
              'and'
              'begin'
              'case'
              'call'
              'class'
              'continue'
              'do'
              'each'
              'else'
              'elseif'
              'end'
              'erase'
              'error'
              'event'
              'exit'
              'false'
              'for'
              'function'
              'get'
              'gosub'
              'goto'
              'if'
              'implement'
              'in'
              'load'
              'loop'
              'lset'
              'me'
              'mid'
              'new'
              'next'
              'not'
              'nothing'
              'on'
              'or'
              'property'
              'raiseevent'
              'rem'
              'resume'
              'return'
              'rset'
              'select'
              'set'
              'stop'
              'sub'
              'then'
              'to'
              'true'
              'unload'
              'until'
              'wend'
              'while'
              'with'
              'withevents'
              'attribute'
              'alias'
              'as'
              'boolean'
              'byref'
              'byte'
              'byval'
              'const'
              'compare'
              'currency'
              'date'
              'declare'
              'dim'
              'double'
              'enum'
              'explicit'
              'friend'
              'global'
              'integer'
              'let'
              'lib'
              'long'
              'module'
              'object'
              'option'
              'optional'
              'preserve'
              'private'
              'public'
              'redim'
              'single'
              'static'
              'string'
              'type'
              'variant')
          end
          item
            KeywordListNumber = 3
            Name = 'Python'
            Keywords.Strings = (
              'and'
              'assert'
              'break'
              'class'
              'continue'
              'def'
              'del'
              'elif'
              'else'
              'except'
              'exec'
              'finally'
              'for'
              'from'
              'global'
              'if'
              'import'
              'in'
              'is'
              'lambda'
              'None'
              'not'
              'or'
              'pass'
              'print'
              'raise'
              'return'
              'try'
              'while'
              'yield')
          end
          item
            KeywordListNumber = 4
            Name = 'PHP'
            Keywords.Strings = (
              'and'
              'array'
              'as'
              'bool'
              'boolean'
              'break'
              'case'
              'cfunction'
              'class'
              'const'
              'continue'
              'declare'
              'default'
              'die'
              'directory'
              'do'
              'double'
              'echo'
              'else'
              'elseif'
              'empty'
              'enddeclare'
              'endfor'
              'endforeach'
              'endif'
              'endswitch'
              'endwhile'
              'eval'
              'exit'
              'extends'
              'false'
              'float'
              'for'
              'foreach'
              'function'
              'global'
              'if'
              'include'
              'include_once'
              'int'
              'integer'
              'isset'
              'list'
              'new'
              'null'
              'object'
              'old_function'
              'or'
              'parent'
              'print'
              'real'
              'require'
              'require_once'
              'resource'
              'return'
              'static'
              'stdclass'
              'string'
              'switch'
              'true'
              'unset'
              'use'
              'var'
              'while'
              'xor'
              'abstract'
              'catch'
              'clone'
              'exception'
              'final'
              'implements'
              'interface'
              'php_user_filter'
              'private'
              'protected'
              'public'
              'this'
              'throw'
              'try'
              '__class__'
              '__file__'
              '__function__'
              '__line__'
              '__method__'
              '__sleep'
              '__wakeup')
          end
          item
            KeywordListNumber = 5
            Name = 'DTD Keywords'
            Keywords.Strings = (
              'ELEMENT'
              'DOCTYPE'
              'ATTLIST'
              'ENTITY'
              'NOTATION')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '<!--'
        CommentBoxEnd = '-->'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '<!--'
        CommentStreamEnd = '-->'
        NumStyleBits = 7
      end
      item
        Name = 'IDL'
        Lexer = 'cpp'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols/UUID'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Verbatim strings for C#'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regular expressions'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Line'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User-defined keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global classes and typedefs'
            StyleNumber = 19
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Primary keywords and identifiers'
            Keywords.Strings = (
              'aggregatable'
              'allocate'
              'appobject'
              'arrays'
              'async'
              'async_uuid'
              'auto_handle'
              'bindable'
              'boolean'
              'broadcast'
              'byte'
              'byte_count'
              'call_as'
              'callback'
              'char'
              'coclass'
              'code'
              'comm_status'
              'const'
              'context_handle'
              'context_handle_noserialize'
              'context_handle_serialize'
              'control'
              'cpp_quote'
              'custom'
              'decode'
              'default'
              'defaultbind'
              'defaultcollelem'
              'defaultvalue'
              'defaultvtable'
              'dispinterface'
              'displaybind'
              'dllname'
              'double'
              'dual'
              'enable_allocate'
              'encode'
              'endpoint'
              'entry'
              'enum'
              'error_status_t'
              'explicit_handle'
              'fault_status'
              'first_is'
              'float'
              'handle_t'
              'heap'
              'helpcontext'
              'helpfile'
              'helpstring'
              'helpstringcontext'
              'helpstringdll'
              'hidden'
              'hyper'
              'id'
              'idempotent'
              'ignore'
              'iid_as'
              'iid_is'
              'immediatebind'
              'implicit_handle'
              'import'
              'importlib'
              'in'
              'include'
              'in_line'
              'int'
              '__int64'
              '__int3264'
              'interface'
              'last_is'
              'lcid'
              'length_is'
              'library'
              'licensed'
              'local'
              'long'
              'max_is'
              'maybe'
              'message'
              'methods'
              'midl_pragma'
              'midl_user_allocate'
              'midl_user_free'
              'min_is'
              'module'
              'ms_union'
              'ncacn_at_dsp'
              'ncacn_dnet_nsp'
              'ncacn_http'
              'ncacn_ip_tcp'
              'ncacn_nb_ipx'
              'ncacn_nb_nb'
              'ncacn_nb_tcp'
              'ncacn_np'
              'ncacn_spx'
              'ncacn_vns_spp'
              'ncadg_ip_udp'
              'ncadg_ipx'
              'ncadg_mq'
              'ncalrpc'
              'nocode'
              'nonbrowsable'
              'noncreatable'
              'nonextensible'
              'notify'
              'object'
              'odl'
              'oleautomation'
              'optimize'
              'optional'
              'out'
              'out_of_line'
              'pipe'
              'pointer_default'
              'pragma'
              'properties'
              'propget'
              'propput'
              'propputref'
              'ptr'
              'public'
              'range'
              'readonly'
              'ref'
              'represent_as'
              'requestedit'
              'restricted'
              'retval'
              'shape'
              'short'
              'signed'
              'size_is'
              'small'
              'source'
              'strict_context_handle'
              'string'
              'struct'
              'switch'
              'switch_is'
              'switch_type'
              'transmit_as'
              'typedef'
              'uidefault'
              'union'
              'unique'
              'unsigned'
              'user_marshal'
              'usesgetlasterror'
              'uuid'
              'v1_enum'
              'vararg'
              'version'
              'void'
              'wchar_t'
              'wire_marshal'
              'attribute'
              'native'
              'noscript'
              'scriptable'
              'shared'
              'wstring'
              'inout')
          end>
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
      end
      item
        Name = 'Inno Setup'
        Lexer = 'inno'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Parameter'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Section'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor (inline)'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Pascal Comment'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Pascal Keyword'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Userdefined Keywords'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 12
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Sections'
            Keywords.Strings = (
              'code'
              'components'
              'custommessages'
              'dirs'
              'files'
              'icons'
              'ini'
              'installdelete'
              'langoptions'
              'languages'
              'messages'
              'registry'
              'run'
              'setup'
              'types'
              'tasks'
              'uninstalldelete'
              'uninstallrun')
          end
          item
            KeywordListNumber = 1
            Name = 'Keywords'
            Keywords.Strings = (
              'allowcancelduringinstall'
              'allownoicons'
              'allowrootdirectory'
              'allowuncpath'
              'alwaysrestart'
              'alwaysshowcomponentslist'
              'alwaysshowdironreadypage'
              'alwaysshowgrouponreadypage'
              'alwaysusepersonalgroup'
              'appcomments'
              'appcontact'
              'appcopyright'
              'appenddefaultdirname'
              'appenddefaultgroupname'
              'appid'
              'appmodifypath'
              'appmutex'
              'appname'
              'apppublisher'
              'apppublisherurl'
              'appreadmefile'
              'appsupporturl'
              'appupdatesurl'
              'appvername'
              'appversion'
              'architecturesallowed'
              'architecturesinstallin64bitmode'
              'backcolor'
              'backcolor2'
              'backcolordirection'
              'backsolid'
              'changesassociations'
              'changesenvironment'
              'compression'
              'copyrightfontname'
              'copyrightfontsize'
              'createappdir'
              'createuninstallregkey'
              'defaultdirname'
              'defaultgroupname'
              'defaultuserinfoname'
              'defaultuserinfoorg'
              'defaultuserinfoserial'
              'dialogfontname'
              'dialogfontsize'
              'direxistswarning'
              'disabledirpage'
              'disablefinishedpage'
              'disableprogramgrouppage'
              'disablereadymemo'
              'disablereadypage'
              'disablestartupprompt'
              'diskclustersize'
              'diskslicesize'
              'diskspanning'
              'enablesdirdoesntexistwarning'
              'encryption'
              'extradiskspacerequired'
              'flatcomponentslist'
              'infoafterfile'
              'infobeforefile'
              'internalcompresslevel'
              'languagedetectionmethod'
              'languagecodepage'
              'languageid'
              'languagename'
              'licensefile'
              'mergeduplicatefiles'
              'minversion'
              'onlybelowversion'
              'outputbasefilename'
              'outputdir'
              'outputmanifestfile'
              'password'
              'privilegesrequired'
              'reservebytes'
              'restartifneededbyrun'
              'setupiconfile'
              'showcomponentsizes'
              'showlanguagedialog'
              'showtaskstreelines'
              'slicesperdisk'
              'solidcompression'
              'sourcedir'
              'timestamprounding'
              'timestampsinutc'
              'titlefontname'
              'titlefontsize'
              'touchdate'
              'touchtime'
              'uninstallable'
              'uninstalldisplayicon'
              'uninstalldisplayname'
              'uninstallfilesdir'
              'uninstalllogmode'
              'uninstallrestartcomputer'
              'updateuninstalllogappname'
              'usepreviousappdir'
              'usepreviousgroup'
              'useprevioussetuptype'
              'useprevioustasks'
              'useprevioususerinfo'
              'userinfopage'
              'usesetupldr'
              'versioninfocompany'
              'versioninfocopyright'
              'versioninfodescription'
              'versioninfotextversion'
              'versioninfoversion'
              'welcomefontname'
              'welcomefontsize'
              'windowshowcaption'
              'windowstartmaximized'
              'windowresizable'
              'windowvisible'
              'wizardimagebackcolor'
              'wizardimagefile'
              'wizardimagestretch'
              'wizardsmallimagefile')
          end
          item
            KeywordListNumber = 2
            Name = 'Parameters'
            Keywords.Strings = (
              'afterinstall'
              'attribs'
              'beforeinstall'
              'check'
              'comment'
              'components'
              'copymode'
              'description'
              'destdir'
              'destname'
              'excludes'
              'extradiskspacerequired'
              'filename'
              'flags'
              'fontinstall'
              'groupdescription'
              'hotkey'
              'infoafterfile'
              'infobeforefile'
              'iconfilename'
              'iconindex'
              'key'
              'languages'
              'licensefile'
              'messagesfile'
              'minversion'
              'name'
              'onlybelowversion'
              'parameters'
              'permissions'
              'root'
              'runonceid'
              'section'
              'source'
              'statusmsg'
              'string'
              'subkey'
              'tasks'
              'type'
              'types'
              'valuedata'
              'valuename'
              'valuetype'
              'workingdir')
          end
          item
            KeywordListNumber = 3
            Name = 'Preprocessor directives'
            Keywords.Strings = (
              'append'
              'define'
              'dim'
              'else'
              'emit'
              'endif'
              'endsub'
              'error'
              'expr'
              'file'
              'for'
              'if'
              'ifdef'
              'ifexist'
              'ifndef'
              'ifnexist'
              'include'
              'insert'
              'pragma'
              'sub'
              'undef')
          end
          item
            KeywordListNumber = 4
            Name = 'Pascal keywords'
            Keywords.Strings = (
              'begin'
              'break'
              'case'
              'const'
              'continue'
              'do'
              'downto'
              'else'
              'end'
              'except'
              'finally'
              'for'
              'function'
              'if'
              'of'
              'procedure'
              'repeat'
              'then'
              'to'
              'try'
              'until'
              'uses'
              'var'
              'while'
              'with')
          end
          item
            KeywordListNumber = 5
            Name = 'Userdefined Keywords'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = ';'
        CommentBoxEnd = ';'
        CommentBoxMiddle = ';'
        CommentBlock = ';'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'Java'
        Lexer = 'cpp'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols/UUID'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Verbatim strings for C#'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regular expressions'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Line'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User-defined keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global classes and typedefs'
            StyleNumber = 19
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'abstract'
              'boolean'
              'break'
              'byte'
              'case'
              'catch'
              'char'
              'class'
              'const'
              'continue'
              'debugger'
              'default'
              'delete'
              'do'
              'double'
              'else'
              'enum'
              'export'
              'extends'
              'final'
              'finally'
              'float'
              'for'
              'function'
              'goto'
              'if'
              'implements'
              'import'
              'in'
              'instanceof'
              'int'
              'interface'
              'long'
              'native'
              'new'
              'package'
              'private'
              'protected'
              'public'
              'return'
              'short'
              'static'
              'super'
              'switch'
              'synchronized'
              'this'
              'throw'
              'throws'
              'transient'
              'try'
              'typeof'
              'var'
              'void'
              'volatile'
              'while'
              'with'
              'true'
              'false'
              'null')
          end>
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
      end
      item
        Name = 'JavaScript'
        Lexer = 'cpp'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols/UUID'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Verbatim strings for C#'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regular expressions'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Line'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User-defined keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global classes and typedefs'
            StyleNumber = 19
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'abstract'
              'boolean'
              'break'
              'byte'
              'case'
              'catch'
              'char'
              'class'
              'const'
              'continue'
              'debugger'
              'default'
              'delete'
              'do'
              'double'
              'else'
              'enum'
              'export'
              'extends'
              'final'
              'finally'
              'float'
              'for'
              'function'
              'goto'
              'if'
              'implements'
              'import'
              'in'
              'instanceof'
              'int'
              'interface'
              'long'
              'native'
              'new'
              'package'
              'private'
              'protected'
              'public'
              'return'
              'short'
              'static'
              'super'
              'switch'
              'synchronized'
              'this'
              'throw'
              'throws'
              'transient'
              'try'
              'typeof'
              'var'
              'void'
              'volatile'
              'while'
              'with'
              'true'
              'false'
              'null')
          end>
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
      end
      item
        Name = 'KIX'
        Lexer = 'kix'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'WhiteSpace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String 2'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Variables'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Macro'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Function'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 9
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Commands'
            Keywords.Strings = (
              '?'
              'and'
              'beep'
              'big'
              'break'
              'call'
              'cd'
              'cls'
              'color'
              'cookie1'
              'copy'
              'debug'
              'del'
              'dim'
              'display'
              'do'
              'until'
              'exit'
              'flushkb'
              'for'
              'each'
              'next'
              'function'
              'endfunction'
              'get'
              'gets'
              'global'
              'go'
              'gosub'
              'goto'
              'if'
              'else'
              'endif'
              'md'
              'or'
              'password'
              'play'
              'quit'
              'rd'
              'redim'
              'return'
              'run'
              'select'
              'case'
              'endselect'
              'set'
              'setl'
              'setm'
              'settime'
              'shell'
              'sleep'
              'small'
              'use'
              'while'
              'loop')
          end
          item
            KeywordListNumber = 1
            Name = 'Functions'
            Keywords.Strings = (
              'abs'
              'addkey'
              'addprinterconnection'
              'addprogramgroup'
              'addprogramitem'
              'asc'
              'ascan'
              'at'
              'backupeventlog'
              'box'
              'cdbl'
              'chr'
              'cint'
              'cleareventlog'
              'close'
              'comparefiletimes'
              'createobject'
              'cstr'
              'dectohex'
              'delkey'
              'delprinterconnection'
              'delprogramgroup'
              'delprogramitem'
              'deltree'
              'delvalue'
              'dir'
              'enumgroup'
              'enumipinfo'
              'enumkey'
              'enumlocalgroup'
              'enumvalue'
              'execute'
              'exist'
              'existkey'
              'expandenvironmentvars'
              'fix'
              'formatnumber'
              'freefilehandle'
              'getdiskspace'
              'getfileattr'
              'getfilesize'
              'getfiletime'
              'getfileversion'
              'getobject'
              'iif'
              'ingroup'
              'instr'
              'instrrev'
              'int'
              'isdeclared'
              'join'
              'kbhit'
              'keyexist'
              'lcase'
              'left'
              'len'
              'loadhive'
              'loadkey'
              'logevent'
              'logoff'
              'ltrim'
              'memorysize'
              'messagebox'
              'open'
              'readline'
              'readprofilestring'
              'readtype'
              'readvalue'
              'redirectoutput'
              'right'
              'rnd'
              'round'
              'rtrim'
              'savekey'
              'sendkeys'
              'sendmessage'
              'setascii'
              'setconsole'
              'setdefaultprinter'
              'setfileattr'
              'setfocus'
              'setoption'
              'setsystemstate'
              'settitle'
              'setwallpaper'
              'showprogramgroup'
              'shutdown'
              'sidtoname'
              'split'
              'srnd'
              'substr'
              'trim'
              'ubound'
              'ucase'
              'unloadhive'
              'val'
              'vartype'
              'vartypename'
              'writeline'
              'writeprofilestring'
              'writevalue')
          end
          item
            KeywordListNumber = 2
            Name = 'Macro'
            Keywords.Strings = (
              'address'
              'build'
              'color'
              'comment'
              'cpu'
              'crlf'
              'csd'
              'curdir'
              'date'
              'day'
              'domain'
              'dos'
              'error'
              'fullname'
              'homedir'
              'homedrive'
              'homeshr'
              'hostname'
              'inwin'
              'ipaddress0'
              'ipaddress1'
              'ipaddress2'
              'ipaddress3'
              'kix'
              'lanroot'
              'ldomain'
              'ldrive'
              'lm'
              'logonmode'
              'longhomedir'
              'lserver'
              'maxpwage'
              'mdayno'
              'mhz'
              'monthno'
              'month'
              'msecs'
              'pid'
              'primarygroup'
              'priv'
              'productsuite'
              'producttype'
              'pwage'
              'ras'
              'result'
              'rserver'
              'scriptdir'
              'scriptexe'
              'scriptname'
              'serror'
              'sid'
              'site'
              'startdir'
              'syslang'
              'ticks'
              'time'
              'userid'
              'userlang'
              'wdayno'
              'wksta'
              'wuserid'
              'ydayno'
              'year')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = ';'
        CommentBoxEnd = ';'
        CommentBoxMiddle = ';'
        CommentBlock = ';'
        CommentAtLineStart = True
        CommentStreamStart = ';'
        CommentStreamEnd = ';'
        NumStyleBits = 5
      end
      item
        Name = 'LaTeX'
        Lexer = 'latex'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'WhiteSpace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Command'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tag'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Math'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 4
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
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
      end
      item
        Name = 'Lisp'
        Lexer = 'lisp'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White Space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'End of line where string is not closed'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Special'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Multi Comment'
            StyleNumber = 12
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'not'
              'defun'
              '+'
              '-'
              '*'
              '/'
              '='
              '<'
              '>'
              '<='
              '>='
              'princ'
              'eval'
              'apply'
              'funcall'
              'quote'
              'identity'
              'function'
              'complement'
              'backquote'
              'lambda'
              'set'
              'setq'
              'setf'
              'defun'
              'defmacro'
              'gensym'
              'make'
              'symbol'
              'intern'
              'symbol'
              'name'
              'symbol'
              'value'
              'symbol'
              'plist'
              'get'
              'getf'
              'putprop'
              'remprop'
              'hash'
              'make'
              'array'
              'aref'
              'car'
              'cdr'
              'caar'
              'cadr'
              'cdar'
              'cddr'
              'caaar'
              'caadr'
              'cadar'
              'caddr'
              'cdaar'
              'cdadr'
              'cddar'
              'cdddr'
              'caaaar'
              'caaadr'
              'caadar'
              'caaddr'
              'cadaar'
              'cadadr'
              'caddar'
              'cadddr'
              'cdaaar'
              'cdaadr'
              'cdadar'
              'cdaddr'
              'cddaar'
              'cddadr'
              'cdddar'
              'cddddr'
              'cons'
              'list'
              'append'
              'reverse'
              'last'
              'nth'
              'nthcdr'
              'member'
              'assoc'
              'subst'
              'sublis'
              'nsubst'
              'nsublis'
              'remove'
              'length'
              'list'
              'length'
              'mapc'
              'mapcar'
              'mapl'
              'maplist'
              'mapcan'
              'mapcon'
              'rplaca'
              'rplacd'
              'nconc'
              'delete'
              'atom'
              'symbolp'
              'numberp'
              'boundp'
              'null'
              'listp'
              'consp'
              'minusp'
              'zerop'
              'plusp'
              'evenp'
              'oddp'
              'eq'
              'eql'
              'equal'
              'cond'
              'case'
              'and'
              'or'
              'let'
              'l'
              'if'
              'prog'
              'prog1'
              'prog2'
              'progn'
              'go'
              'return'
              'do'
              'dolist'
              'dotimes'
              'catch'
              'throw'
              'error'
              'cerror'
              'break'
              'continue'
              'errset'
              'baktrace'
              'evalhook'
              'truncate'
              'float'
              'rem'
              'min'
              'max'
              'abs'
              'sin'
              'cos'
              'tan'
              'expt'
              'exp'
              'sqrt'
              'random'
              'logand'
              'logior'
              'logxor'
              'lognot'
              'bignums'
              'logeqv'
              'lognand'
              'lognor'
              'logorc2'
              'logtest'
              'logbitp'
              'logcount'
              'integer'
              'length'
              'nil')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = ';;'
        CommentBoxEnd = ';;'
        CommentBoxMiddle = ';;'
        CommentBlock = ';'
        CommentAtLineStart = True
        CommentStreamStart = ';;'
        CommentStreamEnd = ';;'
        NumStyleBits = 5
      end
      item
        Name = 'LUA'
        Lexer = 'lua'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White Space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Block Comment (5.0)'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Char'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Literal String'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor (obsolete in Lua 4.0 and up)'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            Name = 'EOL when string not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other Keywords 1 (testcolors)'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other Keywords 2 (testcolors)'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other Keywords 3 (testcolors)'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other Keywords 4 (testcolors)'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other Keywords 5 (testcolors)'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other Keywords 6 (testcolors)'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other Keywords 7 (testcolors)'
            StyleNumber = 19
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'break'
              'do'
              'else'
              'elseif'
              'end'
              'false'
              'for'
              'function'
              'if'
              'in'
              'local'
              'nil'
              'not'
              'or'
              'repeat'
              'return'
              'then'
              'true'
              'until'
              'while')
          end
          item
            KeywordListNumber = 1
            Name = 'Basic Functions'
            Keywords.Strings = (
              '_VERSION'
              'assert'
              'collectgarbage'
              'dofile'
              'error'
              'gcinfo'
              'loadfile'
              'loadstring'
              'print'
              'tonumber'
              'tostring'
              'type'
              'unpack'
              '_ALERT'
              '_ERRORMESSAGE'
              '_INPUT'
              '_PROMPT'
              '_OUTPUT'
              '_STDERR'
              '_STDIN'
              '_STDOUT'
              'call'
              'dostring'
              'foreach'
              'foreachi'
              'getn'
              'globals'
              'newtype'
              'rawget'
              'rawset'
              'require'
              'sort'
              'tinsert'
              'tremove'
              '_G'
              'getfenv'
              'getmetatable'
              'ipairs'
              'loadlib'
              'next'
              'pairs'
              'pcall'
              'rawegal'
              'rawget'
              'rawset'
              'require'
              'setfenv'
              'setmetatable'
              'xpcall'
              'string'
              'table'
              'math'
              'coroutine'
              'io'
              'os'
              'debug')
          end
          item
            KeywordListNumber = 2
            Name = 'String, (table) & math functions'
            Keywords.Strings = (
              'abs'
              'acos'
              'asin'
              'atan'
              'atan2'
              'ceil'
              'cos'
              'deg'
              'exp'
              'floor'
              'format'
              'frexp'
              'gsub'
              'ldexp'
              'log'
              'log10'
              'max'
              'min'
              'mod'
              'rad'
              'random'
              'randomseed'
              'sin'
              'sqrt'
              'strbyte'
              'strchar'
              'strfind'
              'strlen'
              'strlower'
              'strrep'
              'strsub'
              'strupper'
              'tan'
              'string.byte'
              'string.char'
              'string.dump'
              'string.find'
              'string.len'
              'string.lower'
              'string.rep'
              'string.sub'
              'string.upper'
              'string.format'
              'string.gfind'
              'string.gsub'
              'table.concat'
              'table.foreach'
              'table.foreachi'
              'table.getn'
              'table.sort'
              'table.insert'
              'table.remove'
              'table.setn'
              'math.abs'
              'math.acos'
              'math.asin'
              'math.atan'
              'math.atan2'
              'math.ceil'
              'math.cos'
              'math.deg'
              'math.exp'
              'math.floor'
              'math.frexp'
              'math.ldexp'
              'math.log'
              'math.log10'
              'math.max'
              'math.min'
              'math.mod'
              'math.pi'
              'math.rad'
              'math.random'
              'math.randomseed'
              'math.sin'
              'math.sqrt'
              'math.tan')
          end
          item
            KeywordListNumber = 3
            Name = '(coroutines), I/O & system facilities'
            Keywords.Strings = (
              'openfile'
              'closefile'
              'readfrom'
              'writeto'
              'appendto'
              'remove'
              'rename'
              'flush'
              'seek'
              'tmpfile'
              'tmpname'
              'read'
              'write'
              'clock'
              'date'
              'difftime'
              'execute'
              'exit'
              'getenv'
              'setlocale'
              'time'
              'coroutine.create'
              'coroutine.resume'
              'coroutine.status'
              'coroutine.wrap'
              'coroutine.yield'
              'io.close'
              'io.flush'
              'io.input'
              'io.lines'
              'io.open'
              'io.output'
              'io.read'
              'io.tmpfile'
              'io.type'
              'io.write'
              'io.stdin'
              'io.stdout'
              'io.stderr'
              'os.clock'
              'os.date'
              'os.difftime'
              'os.execute'
              'os.exit'
              'os.getenv'
              'os.remove'
              'os.rename'
              'os.setlocale'
              'os.time'
              'os.tmpname')
          end
          item
            KeywordListNumber = 4
            Name = '???'
          end
          item
            KeywordListNumber = 5
            Name = '??? 2'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '--[['
        CommentBoxEnd = ']]'
        CommentBoxMiddle = '*'
        CommentBlock = '--'
        CommentAtLineStart = True
        CommentStreamStart = '--[['
        CommentStreamEnd = ']]'
        NumStyleBits = 5
      end
      item
        Name = 'Makefile'
        Lexer = 'makefile'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Variable'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10089408
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 238
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Target'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clRed
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Error'
            StyleNumber = 9
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '#'
        CommentStreamEnd = '#'
        NumStyleBits = 5
      end
      item
        Name = 'MMixal'
        Lexer = 'mmixal'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Divsion of leading whitespace in line'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Label'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Opcode (not validated)'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Division between Label and Opcode'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Valid Opcode'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Unknown Opcode'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Division between Opcode and Operands'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Division of Operands'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Number'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Reference (to a Label)'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Char'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'String'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 8323199
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Register'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Hexadecimal Number'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Operator'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Symbol'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Preprocessor'
            StyleNumber = 17
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Operation Codes'
            Keywords.Strings = (
              '2ADDU'
              '4ADDU'
              '8ADDU'
              '16ADDU'
              'ADD'
              'ADDU'
              'AND'
              'ANDNH'
              'ANDNL'
              'ANDNMH'
              'ANDNML'
              'BDIF'
              'BEV'
              'BN'
              'BNN'
              'BNP'
              'BNZ'
              'BOD'
              'BP'
              'BSPEC'
              'BYTE'
              'BZ'
              'CMP'
              'CMPU'
              'CSEV'
              'CSN'
              'CSNN'
              'CSNP'
              'CSNZ'
              'CSOD'
              'CSP'
              'CSWAP'
              'CSZ'
              'DIV'
              'DIVU'
              'ESPEC'
              'EXPR'
              'FADD'
              'FCMP'
              'FCMPE'
              'FDIV'
              'FEQL'
              'FEQLE'
              'FIX'
              'FIXU'
              'FLOT'
              'FLOTU'
              'FMUL'
              'FREM'
              'FSQRT'
              'FSUB'
              'FUN'
              'FUNE'
              'GET'
              'GETA'
              'GO'
              'GREG'
              'I_BIT'
              'INCH'
              'INCL'
              'INCMH'
              'INCML'
              'IS'
              'JMP'
              'LDA'
              'LDB'
              'LDBU'
              'LDHT'
              'LDO'
              'LDOU'
              'LDSF'
              'LDT'
              'LDTU'
              'LDUNC'
              'LDVTS'
              'LDW'
              'LDWU'
              'LOC'
              'LOCAL'
              'MOR'
              'MUL'
              'MULU'
              'MUX'
              'MXOR'
              'NAND'
              'NEG'
              'NEGU'
              'NNIX'
              'NOR'
              'NXOR'
              'O_BIT'
              'OCTA'
              'ODIF'
              'OR'
              'ORH'
              'ORL'
              'ORMH'
              'ORML'
              'ORN'
              'PBEV'
              'PBN'
              'PBNN'
              'PBNP'
              'PBNZ'
              'PBOD'
              'PBP'
              'PBZ'
              'POP'
              'PREFIX'
              'PREGO'
              'PRELD'
              'PREST'
              'PUSHGO'
              'PUSHJ'
              'PUT'
              'RESUME'
              'SAVE'
              'SET'
              'SETH'
              'SETL'
              'SETMH'
              'SETML'
              'SFLOT'
              'SFLOTU'
              'SL'
              'SLU'
              'SR'
              'SRU'
              'STB'
              'STBU'
              'STCO'
              'STHT'
              'STO'
              'STOU'
              'STSF'
              'STT'
              'STTU'
              'STUNC'
              'STW'
              'STWU'
              'SUB'
              'SUBU'
              'SWYM'
              'SYNC'
              'SYNCD'
              'TDIF'
              'TETRA'
              'TRAP'
              'TRIP'
              'UNSAVE'
              'WDIF'
              'WYDEXOR'
              'ZSEV'
              'ZSN'
              'ZSNN'
              'ZSNP'
              'ZSNZ'
              'ZSOD'
              'ZSP'
              'ZSZ')
          end
          item
            KeywordListNumber = 1
            Name = 'Special Register'
            Keywords.Strings = (
              'rA'
              'rB'
              'rC'
              'rD'
              'rE'
              'rF'
              'rG'
              'rH'
              'rI'
              'rJ'
              'rK'
              'rL'
              'rM'
              'rN'
              'rO'
              'rP'
              'rQ'
              'rR'
              'rS'
              'rT'
              'rU'
              'rV'
              'rW'
              'rX'
              'rY'
              'rZ'
              'rBB'
              'rTT'
              'rWW'
              'rXX'
              'rYY'
              'rZZ')
          end
          item
            KeywordListNumber = 2
            Name = 'Predefined Symbols'
            Keywords.Strings = (
              '@'
              'Text_Segment'
              'Data_Segment'
              'Pool_Segment'
              'Stack_Segment'
              'StdErr'
              'StdIn'
              'StdOut'
              'Fopen'
              'Fclose'
              'Fread'
              'Fwrite'
              'Fgets'
              'Fputs'
              'Fgetws'
              'Fputws'
              'Ftell'
              'Fseek'
              'TextRead'
              'TextWrite'
              'BinaryRead'
              'BinaryWrite'
              'BinaryReadWrite')
          end>
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
      end
      item
        Name = 'MSSQL'
        Lexer = 'mssql'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Variable'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Column Name'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Statement'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Data Type'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'System Table'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global Variable'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Function'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Stored Procedure'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default Pref Datatype'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Column Name 2'
            StyleNumber = 16
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Statements'
          end
          item
            KeywordListNumber = 1
            Name = 'Data Types'
          end
          item
            KeywordListNumber = 2
            Name = 'System tables'
          end
          item
            KeywordListNumber = 3
            Name = 'Global variables'
          end
          item
            KeywordListNumber = 4
            Name = 'Functions'
          end
          item
            KeywordListNumber = 5
            Name = 'System Stored Procedures'
          end
          item
            KeywordListNumber = 6
            Name = 'Operators'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'nnCronTab'
        Lexer = 'nncrontab'
        Styles = <
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = 9474192
            CharCase = CASE_MIXED
            Name = 'Task start/end'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Section Keywords'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 8355584
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Modificators'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clBlack
            BackColor = 16769279
            CharCase = CASE_MIXED
            Name = 'Asterisk'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double Quoted String'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Environment Variable'
            StyleNumber = 9
          end
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Section keywords and Forth words'
            Keywords.Strings = (
              'AGAIN'
              'ALLOT'
              'AND'
              'Action'
              'BEGIN'
              'CASE'
              'COMPARE'
              'CONSTANT'
              'CREATE'
              'DO'
              'Days'
              'ELSE'
              'ENDCASE'
              'ENDOF'
              'EVAL-SUBST'
              'EVALUATE'
              'FALSE'
              'Hours'
              'I'
              'IF'
              'LEAVE'
              'LOOP'
              'Minutes'
              'Months'
              'NOT'
              'OF'
              'OFF'
              'ON'
              'OR'
              'PAD'
              'REPEAT'
              'Rule'
              'SET'
              'THEN'
              'TRUE'
              'Time'
              'UNTIL'
              'VALUE'
              'VARIABLE'
              'WHILE'
              'WeekDays'
              'Years')
          end
          item
            KeywordListNumber = 1
            Name = 'nnCrontab keywords'
            Keywords.Strings = (
              '</JScript>'
              '</SCRIPT>'
              '</VBScript>'
              '<JScript>'
              '<VBScript>'
              'ACCESS-DATE'
              'BEEP'
              'CALL_DIAL'
              'CALL_HANGUP'
              'CHAR'
              'CLIPBOARD'
              'CONSOLE'
              'CREATION-DATE'
              'CUR-DATE'
              'DATE-'
              'DATE-INTERVAL'
              'DELAY'
              'DIAL'
              'DIR-CREATE'
              'DIR-DELETE'
              'DIR-EMPTY'
              'DIR-SIZE'
              'Day@'
              'Domain'
              'ERR-MSG'
              'EXIST'
              'FILE-ACCESS-DATE'
              'FILE-APPEND'
              'FILE-COPY'
              'FILE-CREATE'
              'FILE-CREATION-DATE'
              'FILE-CROP'
              'FILE-DATE'
              'FILE-DELETE'
              'FILE-EMPTY'
              'FILE-EXIST'
              'FILE-MOVE'
              'FILE-RENAME'
              'FILE-SIZE'
              'FILE-WRITE'
              'FILE-WRITE-DATE'
              'FOR-CHILD-WINDOWS'
              'FOR-FILES'
              'FOR-WINDOWS'
              'FREE-SPACE'
              'GET-CUR-TIME'
              'GET-REG'
              'GET-VER'
              'GetTickCount'
              'HANGUP'
              'HIDE-ICON'
              'HINT'
              'HINT-OFF'
              'HINT-POS'
              'HINT-SIZE'
              'HINTW'
              'HOST-EXIST'
              'Hour@'
              'IDLE'
              'INTERVAL'
              'IS-ARCHIVE'
              'IS-DIR'
              'IS-HIDDEN'
              'IS-READONLY'
              'IS-SYSTEM'
              'KILL'
              'LAUNCH'
              'LOG'
              'LOGGEDON'
              'LOGOFF'
              'LogonBatch'
              'LogonInteractive'
              'LogonNetwork'
              'MOUSE-LBCLK'
              'MOUSE-LBDCLK'
              'MOUSE-LBDN'
              'MOUSE-LBUP'
              'MOUSE-MOVE'
              'MOUSE-MOVER'
              'MOUSE-MOVEW'
              'MOUSE-RBCLK'
              'MOUSE-RBDCLK'
              'MOUSE-RBDN'
              'MOUSE-RBUP'
              'MSG'
              'Min@'
              'Mon@'
              'MonitorResponseTime'
              'NHOST-EXIST'
              'No'
              'ONLINE'
              'PAUSE'
              'PLAY-SOUND'
              'PLAY-SOUNDW'
              'POP3-CHECK'
              'POWEROFF'
              'PROC-EXIST'
              'PROC-TIME'
              'PURGE-OLD'
              'PURGE-OLDA'
              'PURGE-OLDW'
              'Password'
              'QSTART-APP'
              'QSTART-APPW'
              'QUERY'
              'QUIT'
              'RASDomain'
              'RASError'
              'RASPassword'
              'RASPhone'
              'RASSecPassword'
              'RASUser'
              'RE-ALL'
              'RE-MATCH'
              'REBOOT'
              'REG-DELETE-KEY'
              'REG-DELETE-VALUE'
              'REG-DWORD'
              'REG-SZ'
              'REMINDER'
              'RUN'
              'SEND-KEYS'
              'SEND-KEYS-DELAY'
              'SHOW-ICON'
              'SHUTDOWN'
              'START-APP'
              'START-APPW'
              'START-QUIT'
              'START-TIME'
              'Sec@'
              'SecPassword'
              'THINT'
              'THINTW'
              'TimeSec@'
              'TMSG'
              'TQUERY'
              'User'
              'WDay@'
              'WIN-ACTIVATE'
              'WIN-ACTIVE'
              'WIN-CLICK'
              'WIN-CLOSE'
              'WIN-EXIST'
              'WIN-HIDE'
              'WIN-HWND'
              'WIN-MAXIMIZE'
              'WIN-MINIMIZE'
              'WIN-MOVE'
              'WIN-MOVER'
              'WIN-RESTORE'
              'WIN-SEND-KEYS'
              'WIN-SHOW'
              'WIN-TERMINATE'
              'WIN-TOPMOST'
              'WIN-VER'
              'WIN-WAIT'
              'WINAPI'
              'WRITE-DATE'
              'WatchClipboard'
              'WatchConnect'
              'WatchDir'
              'WatchDisconnect'
              'WatchDriveInsert'
              'WatchDriveRemove'
              'WatchFile'
              'WatchProc'
              'WatchProcStop'
              'WatchWinActivate'
              'WatchWinCreate'
              'WatchWinDestroy'
              'WatchWindow'
              'WinNT'
              'Year@'
              'Yes')
          end
          item
            KeywordListNumber = 2
            Name = 'Modifiers'
            Keywords.Strings = (
              'ALL'
              'AboveNormalPriority'
              'AsService'
              'BelowNormalPriority'
              'FILESONLY'
              'HighPriority'
              'IdlePriority'
              'LoadProfile'
              'NoActive'
              'NoDel'
              'NoLog'
              'NoRunAs'
              'NormalPriority'
              'OnceADay'
              'OnceAHour'
              'OnceAMonth'
              'OnceAWeek'
              'RECURSIVE'
              'RealtimePriority'
              'RunOnce'
              'SWHide'
              'ShowMaximized'
              'ShowMinimized'
              'ShowNoActivate'
              'ShowNormal'
              'StartIn'
              'StartPos'
              'StartSize'
              'TODEPTH'
              'WATCH-CHANGE-ATTRIBUTES'
              'WATCH-CHANGE-DIR-NAME'
              'WATCH-CHANGE-FILE-NAME'
              'WATCH-CHANGE-LAST-WRITE'
              'WATCH-CHANGE-SECURITY'
              'WATCH-CHANGE-SIZE'
              'WaitFor'
              'WatchSubtree'
              'WithoutProfile')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = 
          ' CommentBoxEnd= CommentBoxMiddle= CommentBlock= CommentStreamSta' +
          'rt= CommentStreamEnd= AssignmentOperator=='
        CommentBoxEnd = 
          ' CommentBoxMiddle= CommentBlock= CommentStreamStart= CommentStre' +
          'amEnd= AssignmentOperator=='
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'Objective_Caml'
        Lexer = 'caml'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White Space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tag Names'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords 2'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Linenum Directive'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numbers'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single Quoted String'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double Quoted String'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment (Not Nested)'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment (Singly Nested)'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment (Doubly Nested)'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment (Triply Nested)'
            StyleNumber = 13
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'as'
              'assert'
              'asr'
              'begin'
              'class'
              'constraint'
              'do'
              'done'
              'downto'
              'else'
              'end'
              'exception'
              'external'
              'false'
              'for'
              'fun'
              'function'
              'functor'
              'if'
              'in'
              'include'
              'inherit'
              'initializer'
              'land'
              'lazy'
              'let'
              'lor'
              'lsl'
              'lsr'
              'lxor'
              'match'
              'method'
              'mod'
              'module'
              'mutable'
              'new'
              'object'
              'of'
              'open'
              'or'
              'private'
              'rec'
              'sig'
              'struct'
              'then'
              'to'
              'true'
              'try'
              'type'
              'val'
              'virtual'
              'when'
              'while'
              'with')
          end
          item
            KeywordListNumber = 1
            Name = 'Optional Keywords'
            Keywords.Strings = (
              'option'
              'Some'
              'None'
              'ignore'
              'ref')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '(*'
        CommentBoxEnd = '*)'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '(*'
        CommentStreamEnd = '*)'
        NumStyleBits = 5
      end
      item
        Name = 'Pascal'
        Lexer = 'pascal'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Inline Assembler'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Class Keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment Keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment Keyword Error'
            StyleNumber = 18
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'const'
              'type'
              'var'
              'begin'
              'end'
              'array'
              'set'
              'packed'
              'record'
              'string'
              'if'
              'then'
              'else'
              'while'
              'for'
              'to'
              'downto'
              'do'
              'with'
              'repeat'
              'until'
              'case'
              'of'
              'goto'
              'exit'
              'label'
              'procedure'
              'function'
              'nil'
              'file'
              'and'
              'or'
              'not'
              'xor'
              'div'
              'mod'
              'external'
              'asm'
              'inline'
              'object'
              'constructor'
              'destructor'
              'virtual'
              'far'
              'assembler'
              'near'
              'inherited'
              'stdcall'
              'cdecl'
              'export'
              'exports'
              'end.'
              'class'
              'ansistring'
              'raise'
              'try'
              'except'
              'on'
              'index'
              'name'
              'finally'
              'false'
              'true'
              'initialization'
              'finalization'
              'override'
              'overload'
              'at'
              'threadvar'
              'resourcestring'
              'as'
              'dispinterface'
              'in'
              'is'
              'out'
              'program'
              'package'
              'library'
              'unit'
              'interface'
              'uses'
              'implementation'
              'shr')
          end
          item
            KeywordListNumber = 1
            Name = 'Class Keywords'
            Keywords.Strings = (
              'write'
              'read'
              'default'
              'public'
              'protected'
              'private'
              'property'
              'published'
              'stored'
              'automated')
          end>
        AssignmentOperator = ':='
        EndOfStatementOperator = ';'
        CommentBoxStart = '{'
        CommentBoxEnd = '}'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '{'
        CommentStreamEnd = '}'
        NumStyleBits = 5
      end
      item
        Name = 'PERL'
        Lexer = 'perl'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White Space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clRed
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16763904
            BackColor = 723723
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'POD: = at beginning of line'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Punctuation'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers (functions, etc.)'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Scalars: $var'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Array: @var'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Hash: %var'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbol table: *var'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regex: /re/ or m{re}'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Substitution: s/re/ore/'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clAqua
            BackColor = 10518656
            CharCase = CASE_MIXED
            Name = 'Long Quote (qq, qx, qr, qw)'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = 10518656
            CharCase = CASE_MIXED
            Name = 'Back Ticks'
            StyleNumber = 20
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16763904
            BackColor = 723723
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Data Section: __DATA__ or __END__ at beginning of line'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = 14536925
            CharCase = CASE_MIXED
            Name = 'Here-doc (delimiter)'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 8323199
            BackColor = 14536925
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Here-doc (single quoted, q)'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 8323199
            BackColor = 14536925
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Here-doc (double quoted, qq)'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Here-doc (back ticks, qx)'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string, generic'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'qq = Double quoted string'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'qx = Back ticks'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clAqua
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'qr = Regex'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'qw = Array'
            StyleNumber = 30
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'POD Verb'
            StyleNumber = 31
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'NULL'
              '__FILE__'
              '__LINE__'
              '__PACKAGE__'
              '__DATA__'
              '__END__'
              'AUTOLOAD'
              'BEGIN'
              'CORE'
              'DESTROY'
              'END'
              'EQ'
              'GE'
              'GT'
              'INIT'
              'LE'
              'LT'
              'NE'
              'CHECK'
              'abs'
              'accept'
              'alarm'
              'and'
              'atan2'
              'bind'
              'binmode'
              'bless'
              'caller'
              'chdir'
              'chmod'
              'chomp'
              'chop'
              'chown'
              'chr'
              'chroot'
              'close'
              'closedir'
              'cmp'
              'connect'
              'continue'
              'cos'
              'crypt'
              'dbmclose'
              'dbmopen'
              'defined'
              'delete'
              'die'
              'do'
              'dump'
              'each'
              'else'
              'elsif'
              'endgrent'
              'endhostent'
              'endnetent'
              'endprotoent'
              'endpwent'
              'endservent'
              'eof'
              'eq'
              'eval'
              'exec'
              'exists'
              'exit'
              'exp'
              'fcntl'
              'fileno'
              'flock'
              'for'
              'foreach'
              'fork'
              'format'
              'formline'
              'ge'
              'getc'
              'getgrent'
              'getgrgid'
              'getgrnam'
              'gethostbyaddr'
              'gethostbyname'
              'gethostent'
              'getlogin'
              'getnetbyaddr'
              'getnetbyname'
              'getnetent'
              'getpeername'
              'getpgrp'
              'getppid'
              'getpriority'
              'getprotobyname'
              'getprotobynumber'
              'getprotoent'
              'getpwent'
              'getpwnam'
              'getpwuid'
              'getservbyname'
              'getservbyport'
              'getservent'
              'getsockname'
              'getsockopt'
              'glob'
              'gmtime'
              'goto'
              'grep'
              'gt'
              'hex'
              'if'
              'index'
              'int'
              'ioctl'
              'join'
              'keys'
              'kill'
              'last'
              'lc'
              'lcfirst'
              'le'
              'length'
              'link'
              'listen'
              'local'
              'localtime'
              'lock'
              'log'
              'lstat'
              'lt'
              'map'
              'mkdir'
              'msgctl'
              'msgget'
              'msgrcv'
              'msgsnd'
              'my'
              'ne'
              'next'
              'no'
              'not'
              'oct'
              'open'
              'opendir'
              'or'
              'ord'
              'our'
              'pack'
              'package'
              'pipe'
              'pop'
              'pos'
              'print'
              'printf'
              'prototype'
              'push'
              'quotemeta'
              'qu'
              'rand'
              'read'
              'readdir'
              'readline'
              'readlink'
              'readpipe'
              'recv'
              'redo'
              'ref'
              'rename'
              'require'
              'reset'
              'return'
              'reverse'
              'rewinddir'
              'rindex'
              'rmdir'
              'scalar'
              'seek'
              'seekdir'
              'select'
              'semctl'
              'semget'
              'semop'
              'send'
              'setgrent'
              'sethostent'
              'setnetent'
              'setpgrp'
              'setpriority'
              'setprotoent'
              'setpwent'
              'setservent'
              'setsockopt'
              'shift'
              'shmctl'
              'shmget'
              'shmread'
              'shmwrite'
              'shutdown'
              'sin'
              'sleep'
              'socket'
              'socketpair'
              'sort'
              'splice'
              'split'
              'sprintf'
              'sqrt'
              'srand'
              'stat'
              'study'
              'sub'
              'substr'
              'symlink'
              'syscall'
              'sysopen'
              'sysread'
              'sysseek'
              'system'
              'syswrite'
              'tell'
              'telldir'
              'tie'
              'tied'
              'time'
              'times'
              'truncate'
              'uc'
              'ucfirst'
              'umask'
              'undef'
              'unless'
              'unlink'
              'unpack'
              'unshift'
              'untie'
              'until'
              'use'
              'utime'
              'values'
              'vec'
              'wait'
              'waitpid'
              'wantarray'
              'warn'
              'while'
              'write'
              'xor')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '#'
        CommentStreamEnd = '#'
        NumStyleBits = 5
      end
      item
        Name = 'PHP'
        Lexer = 'hypertext'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Text'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tags'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Tags'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attributes'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Attributes'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numbers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 39338
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted strings'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted strings'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other inside tag'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 9
          end
          item
            FontName = 'Times New Roman'
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 10526880
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Entities'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12632064
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML style tag ends'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier start'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier end'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 657920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SCRIPT'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 57343
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'CDATA'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 56797
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unquoted values'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XC Comment'
            StyleNumber = 20
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML tags <! ... >'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML command'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15793935
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML 1st param'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML double string'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML single string'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML error'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16737843
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML special'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML entity'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML comment'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlue
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML block'
            StyleNumber = 31
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 32639
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Start'
            StyleNumber = 40
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'JS Default'
            StyleNumber = 41
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'JS Comment'
            StyleNumber = 42
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Line Comment'
            StyleNumber = 43
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'JS Doc Comment'
            StyleNumber = 44
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Number'
            StyleNumber = 45
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Word'
            StyleNumber = 46
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Keyword'
            StyleNumber = 47
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Double quoted string'
            StyleNumber = 48
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Single quoted string'
            StyleNumber = 49
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Symbols'
            StyleNumber = 50
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'JS EOL'
            StyleNumber = 51
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'JS Regex'
            StyleNumber = 52
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Default'
            StyleNumber = 71
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Comment'
            StyleNumber = 72
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Number'
            StyleNumber = 73
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS KeyWord'
            StyleNumber = 74
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS String'
            StyleNumber = 75
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Identifier'
            StyleNumber = 76
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'VBS Unterminated string'
            StyleNumber = 77
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Python Start'
            StyleNumber = 90
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Default'
            StyleNumber = 91
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Comment'
            StyleNumber = 92
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Number'
            StyleNumber = 93
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python String'
            StyleNumber = 94
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Single quoted string'
            StyleNumber = 95
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Keyword'
            StyleNumber = 96
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Triple quotes'
            StyleNumber = 97
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 127
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Triple double quotes'
            StyleNumber = 98
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clBlue
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Class name definition'
            StyleNumber = 99
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 8355584
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python function or method name definition'
            StyleNumber = 100
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python function or method name definition'
            StyleNumber = 101
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = 15728623
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'Python Identifiers'
            StyleNumber = 102
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Complex Variable'
            StyleNumber = 104
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'PHP Default'
            StyleNumber = 118
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Double quoted string'
            StyleNumber = 119
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Single quoted string'
            StyleNumber = 120
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Keyword'
            StyleNumber = 121
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Number'
            StyleNumber = 122
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Variable'
            StyleNumber = 123
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Comment'
            StyleNumber = 124
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP One line Comment'
            StyleNumber = 125
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Variable in double quoted string'
            StyleNumber = 126
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP operator'
            StyleNumber = 127
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'HyperText'
            Keywords.Strings = (
              'a'
              'abbr'
              'acronym'
              'address'
              'applet'
              'area'
              'b'
              'base'
              'basefont'
              'bdo'
              'big'
              'blockquote'
              'body'
              'br'
              'button'
              'caption'
              'center'
              'cite'
              'code'
              'col'
              'colgroup'
              'dd'
              'del'
              'dfn'
              'dir'
              'div'
              'dl'
              'dt'
              'em'
              'fieldset'
              'font'
              'form'
              'frame'
              'frameset'
              'h1'
              'h2'
              'h3'
              'h4'
              'h5'
              'h6'
              'head'
              'hr'
              'html'
              'i'
              'iframe'
              'img'
              'input'
              'ins'
              'isindex'
              'kbd'
              'label'
              'legend'
              'li'
              'link'
              'map'
              'menu'
              'meta'
              'noframes'
              'noscript'
              'object'
              'ol'
              'optgroup'
              'option'
              'p'
              'param'
              'pre'
              'q'
              's'
              'samp'
              'script'
              'select'
              'small'
              'span'
              'strike'
              'strong'
              'style'
              'sub'
              'sup'
              'table'
              'tbody'
              'td'
              'textarea'
              'tfoot'
              'th'
              'thead'
              'title'
              'tr'
              'tt'
              'u'
              'ul'
              'var'
              'xml'
              'xmlns'
              'abbr'
              'accept-charset'
              'accept'
              'accesskey'
              'action'
              'align'
              'alink'
              'alt'
              'archive'
              'axis'
              'background'
              'bgcolor'
              'border'
              'cellpadding'
              'cellspacing'
              'char'
              'charoff'
              'charset'
              'checked'
              'cite'
              'class'
              'classid'
              'clear'
              'codebase'
              'codetype'
              'color'
              'cols'
              'colspan'
              'compact'
              'content'
              'coords'
              'data'
              'datafld'
              'dataformatas'
              'datapagesize'
              'datasrc'
              'datetime'
              'declare'
              'defer'
              'dir'
              'disabled'
              'enctype'
              'event'
              'face'
              'for'
              'frame'
              'frameborder'
              'headers'
              'height'
              'href'
              'hreflang'
              'hspace'
              'http-equiv'
              'id'
              'ismap'
              'label'
              'lang'
              'language'
              'leftmargin'
              'link'
              'longdesc'
              'marginwidth'
              'marginheight'
              'maxlength'
              'media'
              'method'
              'multiple'
              'name'
              'nohref'
              'noresize'
              'noshade'
              'nowrap'
              'object'
              'onblur'
              'onchange'
              'onclick'
              'ondblclick'
              'onfocus'
              'onkeydown'
              'onkeypress'
              'onkeyup'
              'onload'
              'onmousedown'
              'onmousemove'
              'onmouseover'
              'onmouseout'
              'onmouseup'
              'onreset'
              'onselect'
              'onsubmit'
              'onunload'
              'profile'
              'prompt'
              'readonly'
              'rel'
              'rev'
              'rows'
              'rowspan'
              'rules'
              'scheme'
              'scope'
              'selected'
              'shape'
              'size'
              'span'
              'src'
              'standby'
              'start'
              'style'
              'summary'
              'tabindex'
              'target'
              'text'
              'title'
              'topmargin'
              'type'
              'usemap'
              'valign'
              'value'
              'valuetype'
              'version'
              'vlink'
              'vspace'
              'width'
              'text'
              'password'
              'checkbox'
              'radio'
              'submit'
              'reset'
              'file'
              'hidden'
              'image'
              'framespacing'
              'scrolling'
              'allowtransparency'
              'bordercolor')
          end
          item
            KeywordListNumber = 1
            Name = 'JavaScript'
            Keywords.Strings = (
              'abstract'
              'boolean'
              'break'
              'byte'
              'case'
              'catch'
              'char'
              'class'
              'const'
              'continue'
              'debugger'
              'default'
              'delete'
              'do'
              'double'
              'else'
              'enum'
              'export'
              'extends'
              'final'
              'finally'
              'float'
              'for'
              'function'
              'goto'
              'if'
              'implements'
              'import'
              'in'
              'instanceof'
              'int'
              'interface'
              'long'
              'native'
              'new'
              'package'
              'private'
              'protected'
              'public'
              'return'
              'short'
              'static'
              'super'
              'switch'
              'synchronized'
              'this'
              'throw'
              'throws'
              'transient'
              'try'
              'typeof'
              'var'
              'void'
              'volatile'
              'while'
              'with')
          end
          item
            KeywordListNumber = 2
            Name = 'VBScript'
            Keywords.Strings = (
              'and'
              'begin'
              'case'
              'call'
              'class'
              'continue'
              'do'
              'each'
              'else'
              'elseif'
              'end'
              'erase'
              'error'
              'event'
              'exit'
              'false'
              'for'
              'function'
              'get'
              'gosub'
              'goto'
              'if'
              'implement'
              'in'
              'load'
              'loop'
              'lset'
              'me'
              'mid'
              'new'
              'next'
              'not'
              'nothing'
              'on'
              'or'
              'property'
              'raiseevent'
              'rem'
              'resume'
              'return'
              'rset'
              'select'
              'set'
              'stop'
              'sub'
              'then'
              'to'
              'true'
              'unload'
              'until'
              'wend'
              'while'
              'with'
              'withevents'
              'attribute'
              'alias'
              'as'
              'boolean'
              'byref'
              'byte'
              'byval'
              'const'
              'compare'
              'currency'
              'date'
              'declare'
              'dim'
              'double'
              'enum'
              'explicit'
              'friend'
              'global'
              'integer'
              'let'
              'lib'
              'long'
              'module'
              'object'
              'option'
              'optional'
              'preserve'
              'private'
              'public'
              'redim'
              'single'
              'static'
              'string'
              'type'
              'variant')
          end
          item
            KeywordListNumber = 3
            Name = 'Python'
            Keywords.Strings = (
              'and'
              'assert'
              'break'
              'class'
              'continue'
              'def'
              'del'
              'elif'
              'else'
              'except'
              'exec'
              'finally'
              'for'
              'from'
              'global'
              'if'
              'import'
              'in'
              'is'
              'lambda'
              'None'
              'not'
              'or'
              'pass'
              'print'
              'raise'
              'return'
              'try'
              'while'
              'yield')
          end
          item
            KeywordListNumber = 4
            Name = 'PHP'
            Keywords.Strings = (
              'and'
              'array'
              'as'
              'bool'
              'boolean'
              'break'
              'case'
              'cfunction'
              'class'
              'const'
              'continue'
              'declare'
              'default'
              'die'
              'directory'
              'do'
              'double'
              'echo'
              'else'
              'elseif'
              'empty'
              'enddeclare'
              'endfor'
              'endforeach'
              'endif'
              'endswitch'
              'endwhile'
              'eval'
              'exit'
              'extends'
              'false'
              'float'
              'for'
              'foreach'
              'function'
              'global'
              'if'
              'include'
              'include_once'
              'int'
              'integer'
              'isset'
              'list'
              'new'
              'null'
              'object'
              'old_function'
              'or'
              'parent'
              'print'
              'real'
              'require'
              'require_once'
              'resource'
              'return'
              'static'
              'stdclass'
              'string'
              'switch'
              'true'
              'unset'
              'use'
              'var'
              'while'
              'xor'
              'abstract'
              'catch'
              'clone'
              'exception'
              'final'
              'implements'
              'interface'
              'php_user_filter'
              'private'
              'protected'
              'public'
              'this'
              'throw'
              'try'
              '__class__'
              '__file__'
              '__function__'
              '__line__'
              '__method__'
              '__sleep'
              '__wakeup')
          end
          item
            KeywordListNumber = 5
            Name = 'DTD Keywords'
            Keywords.Strings = (
              'ELEMENT'
              'DOCTYPE'
              'ATTLIST'
              'ENTITY'
              'NOTATION')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '<!--'
        CommentBoxEnd = '-->'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '<!--'
        CommentStreamEnd = '-->'
        NumStyleBits = 7
      end
      item
        Name = 'PhpScript'
        Lexer = 'phpscript'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Complex Variable'
            StyleNumber = 104
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'PHP Default'
            StyleNumber = 118
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Double quoted string'
            StyleNumber = 119
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Single quoted string'
            StyleNumber = 120
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Keyword'
            StyleNumber = 121
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Number'
            StyleNumber = 122
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Variable'
            StyleNumber = 123
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Comment'
            StyleNumber = 124
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP One line Comment'
            StyleNumber = 125
          end
          item
            FontSize = 0
            FontStyles = [fsItalic]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP Variable in double quoted string'
            StyleNumber = 126
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PHP operator'
            StyleNumber = 127
          end>
        Keywords = <
          item
            KeywordListNumber = 4
            Name = 'PHP'
            Keywords.Strings = (
              'and'
              'argv'
              'as'
              'argc'
              'break'
              'case'
              'cfunction'
              'class'
              'continue'
              'declare'
              'default'
              'do'
              'die'
              'echo'
              'else'
              'elseif'
              'empty'
              'enddeclare'
              'endfor'
              'endforeach'
              'endif'
              'endswitch'
              'endwhile'
              'e_all'
              'e_parse'
              'e_error'
              'e_warning'
              'eval'
              'exit'
              'extends'
              'false'
              'for'
              'foreach'
              'function'
              'global'
              'http_cookie_vars'
              'http_get_vars'
              'http_post_vars'
              'http_post_files'
              'http_env_vars'
              'http_server_vars'
              'if'
              'include'
              'include_once'
              'list'
              'new'
              'not'
              'null'
              'old_function'
              'or'
              'parent'
              'php_os'
              'php_self'
              'php_version'
              'print'
              'require'
              'require_once'
              'return'
              'static'
              'switch'
              'stdclass'
              'this'
              'true'
              'var'
              'xor'
              'virtual'
              'while'
              'define'
              '__file__'
              '__line__'
              '__sleep'
              '__wakeup')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 7
      end
      item
        Name = 'PowerBasic'
        Lexer = 'powerbasic'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Whitespace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String Not Closed (EOL)'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Constant'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Asm'
            StyleNumber = 14
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = #39
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'Properties'
        Lexer = 'props'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Section'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10089408
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Assignment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default value (@)'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Key'
            StyleNumber = 5
          end>
        Keywords = <>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '#'
        CommentStreamEnd = '#'
        NumStyleBits = 5
      end
      item
        Name = 'PureBasic'
        Lexer = 'purebasic'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keywords'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'PreProcessor'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Date'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String not terminated'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 1'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 2'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 3'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Constant'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Asm'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Label'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clRed
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'HexNumber'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'BinNumber'
            StyleNumber = 18
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'break'
              'case'
              'continue'
              'data'
              'datasection'
              'declare'
              'declarecdll'
              'declaredll'
              'default'
              'deftype'
              'dim'
              'else'
              'elseif'
              'end'
              'enddatasection'
              'endenumeration'
              'endif'
              'endinterface'
              'endprocedure'
              'endselect'
              'endstructure'
              'endstructureunion'
              'enumeration'
              'extends'
              'fakereturn'
              'for'
              'foreach'
              'forever'
              'global'
              'gosub'
              'goto'
              'if'
              'includebinary'
              'includefile'
              'includepath'
              'interface'
              'newlist'
              'next'
              'or'
              'procedure'
              'procedurecdll'
              'proceduredll'
              'procedurereturn'
              'protected'
              'read'
              'repeat'
              'restore'
              'return'
              'select'
              'shared'
              'static'
              'step'
              'structure'
              'structureunion'
              'to'
              'until'
              'wend'
              'while'
              'xincludefile')
          end
          item
            KeywordListNumber = 1
            Name = 'PreProcessor'
            Keywords.Strings = (
              'compilercase'
              'compilerdefault'
              'compilerelse'
              'compilerendif'
              'compilerendselect'
              'compilerif'
              'compilerselect')
          end
          item
            KeywordListNumber = 2
            Name = 'User Defined 1'
          end
          item
            KeywordListNumber = 3
            Name = 'User Defined 1'
          end>
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
      end
      item
        Name = 'Python'
        Lexer = 'python'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Triple quotes'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Triple quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Class name definition'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 8355584
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Function or method name definition'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment blocks'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'End of line where string is not closed'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword2'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Decorator'
            StyleNumber = 15
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'assert'
              'break'
              'class'
              'continue'
              'def'
              'del'
              'elif'
              'else'
              'except'
              'exec'
              'finally'
              'for'
              'from'
              'global'
              'if'
              'import'
              'in'
              'is'
              'lambda'
              'None'
              'not'
              'or'
              'pass'
              'print'
              'raise'
              'return'
              'try'
              'while'
              'yield')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'Resource'
        Lexer = 'cpp'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbols/UUID'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Verbatim strings for C#'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16724672
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regular expressions'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Line'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13421568
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User-defined keywords'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment keyword error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global classes and typedefs'
            StyleNumber = 19
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Primary keywords and identifiers'
            Keywords.Strings = (
              'ACCELERATORS'
              'ALT'
              'AUTO3STATE'
              'AUTOCHECKBOX'
              'AUTORADIOBUTTON'
              'BEGIN'
              'BITMAP'
              'BLOCK'
              'BUTTON'
              'CAPTION'
              'CHARACTERISTICS'
              'CHECKBOX'
              'CLASS'
              'COMBOBOX'
              'CONTROL'
              'CTEXT'
              'CURSOR'
              'DEFPUSHBUTTON'
              'DIALOG'
              'DIALOGEX'
              'DISCARDABLE'
              'EDITTEXT'
              'END'
              'EXSTYLE'
              'FONT'
              'GROUPBOX'
              'ICON'
              'LANGUAGE'
              'LISTBOX'
              'LTEXT'
              'MENU'
              'MENUEX'
              'MENUITEM'
              'MESSAGETABLE'
              'POPUP'
              'PUSHBUTTON'
              'RADIOBUTTON'
              'RCDATA'
              'RTEXT'
              'SCROLLBAR'
              'SEPARATOR'
              'SHIFT'
              'STATE3'
              'STRINGTABLE'
              'STYLE'
              'TEXTINCLUDE'
              'VALUE'
              'VERSION'
              'VERSIONINFO'
              'VIRTKEY')
          end>
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
      end
      item
        Name = 'Ruby'
        Lexer = 'ruby'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Error'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'POD'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted string'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Class name definition'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 8355584
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Function or method name definition'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Regex'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Global'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbol'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Module Name'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Instance Var'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Class Var'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Backtick'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Data Section'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Here Delimiter'
            StyleNumber = 20
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Here Q'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Here QQ'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Here QX'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String Q'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String QQ'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String QX'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String QR'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String QW'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Word Demoted'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'StdIn'
            StyleNumber = 30
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'StdOut'
            StyleNumber = 31
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'StdErr'
            StyleNumber = 40
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Upper Bound'
            StyleNumber = 41
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              '__FILE__'
              'and'
              'def'
              'end'
              'in'
              'or'
              'self'
              'unless'
              '__LINE__'
              'begin'
              'defined?'
              'ensure'
              'module'
              'redo'
              'super'
              'until'
              'BEGIN'
              'break'
              'do'
              'false'
              'next'
              'rescue'
              'then'
              'when'
              'END'
              'case'
              'else'
              'for'
              'nil'
              'require'
              'retry'
              'true'
              'while'
              'alias'
              'class'
              'elsif'
              'if'
              'not'
              'return'
              'undef'
              'yield')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '#'
        CommentBoxEnd = '#'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 6
      end
      item
        Name = 'Scheme'
        Lexer = 'lisp'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'White Space'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'End of line where string is not closed'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operator'
            StyleNumber = 10
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              '+'
              '-'
              '*'
              '/'
              '='
              '<'
              '>'
              '<='
              '>='
              '=>'
              'abs'
              'acos'
              'and'
              'angle'
              'append'
              'apply'
              'asin'
              'assoc'
              'assoc'
              'assq'
              'assv'
              'atan'
              'begin'
              'boolean?'
              'caar'
              'cadr'
              'call-with-current-continuation'
              'call/cc'
              'call-with-input-file'
              'call-with-output-file'
              'call-with-values'
              'car'
              'cdr'
              'caar'
              'cadr'
              'cdar'
              'cddr'
              'caaar'
              'caadr'
              'cadar'
              'caddr'
              'cdaar'
              'cdadr'
              'cddar'
              'cdddr'
              'caaaar'
              'caaadr'
              'caadar'
              'caaddr'
              'cadaar'
              'cadadr'
              'caddar'
              'cadddr'
              'cdaaar'
              'cdaadr'
              'cdadar'
              'cdaddr'
              'cddaar'
              'cddadr'
              'cdddar'
              'cddddr'
              'case'
              'ceiling'
              'char->integer'
              'char-alphabetic?'
              'char-ci<=?'
              'char-ci<?'
              'char-ci=?'
              'char-ci>=?'
              'char-ci>?'
              'char-downcase'
              'char-lower-case?'
              'char-numeric?'
              'char-ready?'
              'char-upcase'
              'char-upper-case?'
              'char-whitespace?'
              'char<=?'
              'char<?'
              'char=?'
              'char>=?'
              'char>?'
              'char?'
              'close-input-port'
              'close-output-port'
              'complex?'
              'cond'
              'cons'
              'cos'
              'current-input-port'
              'current-output-port'
              'define'
              'define-syntax'
              'delay'
              'denominator'
              'display'
              'do'
              'dynamic-wind'
              'else'
              'eof-object?'
              'eq?'
              'equal?'
              'eqv?'
              'eval'
              'even?'
              'exact->inexact'
              'exact?'
              'exp'
              'expt'
              'floor'
              'for-each'
              'force'
              'gcd'
              'if'
              'imag-part'
              'inexact->exact'
              'inexact?'
              'input-port?'
              'integer->char'
              'integer?'
              'interaction-environment'
              'lambda'
              'lcm'
              'length'
              'let'
              'let*'
              'let-syntax'
              'letrec'
              'letrec-syntax'
              'list'
              'list->string'
              'list->vector'
              'list-ref'
              'list-tail'
              'list?'
              'load'
              'log'
              'magnitude'
              'make-polar'
              'make-rectangular'
              'make-string'
              'make-vector'
              'map'
              'max'
              'member'
              'memq'
              'memv'
              'min'
              'modulo'
              'negative?'
              'newline'
              'not'
              'null-environment'
              'null?'
              'number->string'
              'number?'
              'numerator'
              'odd?'
              'open-input-file'
              'open-output-file'
              'or'
              'output-port?'
              'pair?'
              'peek-char'
              'input-port?'
              'output-port?'
              'positive?'
              'procedure?'
              'quasiquote'
              'quote'
              'quotient'
              'rational?'
              'rationalize'
              'read'
              'read-char'
              'real-part'
              'real?'
              'remainder'
              'reverse'
              'round'
              'scheme-report-environment'
              'set!'
              'set-car!'
              'set-cdr!'
              'sin'
              'sqrt'
              'string'
              'string->list'
              'string->number'
              'string->symbol'
              'string-append'
              'string-ci<=?'
              'string-ci<?'
              'string-ci=?'
              'string-ci>=?'
              'string-ci>?'
              'string-copy'
              'string-fill!'
              'string-length'
              'string-ref'
              'string-set!'
              'string<=?'
              'string<?'
              'string=?'
              'string>=?'
              'string>?'
              'string?'
              'substring'
              'symbol->string'
              'symbol?'
              'syntax-rules'
              'transcript-off'
              'transcript-on'
              'truncate'
              'unquote'
              'unquote-splicing'
              'values'
              'vector'
              'vector->list'
              'vector-fill!'
              'vector-length'
              'vector-ref'
              'vector-set!'
              'vector?'
              'with-input-from-file'
              'with-output-to-file'
              'write'
              'write-char'
              'zero?')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = ';;'
        CommentBoxEnd = ';;'
        CommentBoxMiddle = ';;'
        CommentBlock = ';'
        CommentAtLineStart = True
        CommentStreamStart = ';;'
        CommentStreamEnd = ';;'
        NumStyleBits = 5
      end
      item
        Name = 'SQL'
        Lexer = 'sql'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Whitespace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Character'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SQL*Plus'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SQL*Plus Prompt'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'EOL if string is not closed'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SQL*Plus Comment'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Line Doc Comment'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword2'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Keyword'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Doc Comment Keyword Error'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User 1'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User 2'
            StyleNumber = 20
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User 3'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User 4'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Quoted Identifier'
            StyleNumber = 23
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'action'
              'add'
              'aggregate'
              'all'
              'alter'
              'after'
              'and'
              'as'
              'asc'
              'avg'
              'avg_row_length'
              'auto_increment'
              'between'
              'bigint'
              'bit'
              'binary'
              'blob'
              'bool'
              'both'
              'by'
              'cascade'
              'case'
              'char'
              'character'
              'change'
              'check'
              'checksum'
              'column'
              'columns'
              'comment'
              'constraint'
              'create'
              'cross'
              'current_date'
              'current_time'
              'current_timestamp'
              'data'
              'database'
              'databases'
              'date'
              'datetime'
              'day'
              'day_hour'
              'day_minute'
              'day_second'
              'dayofmonth'
              'dayofweek'
              'dayofyear'
              'dec'
              'decimal'
              'default'
              'delayed'
              'delay_key_write'
              'delete'
              'desc'
              'describe'
              'distinct'
              'distinctrow'
              'double'
              'drop'
              'end'
              'else'
              'escape'
              'escaped'
              'enclosed'
              'enum'
              'explain'
              'exists'
              'fields'
              'file'
              'first'
              'float'
              'float4'
              'float8'
              'flush'
              'foreign'
              'from'
              'for'
              'full'
              'function'
              'global'
              'grant'
              'grants'
              'group'
              'having'
              'heap'
              'high_priority'
              'hour'
              'hour_minute'
              'hour_second'
              'hosts'
              'identified'
              'ignore'
              'in'
              'index'
              'infile'
              'inner'
              'insert'
              'insert_id'
              'int'
              'integer'
              'interval'
              'int1'
              'int2'
              'int3'
              'int4'
              'int8'
              'into'
              'if'
              'is'
              'isam'
              'join'
              'key'
              'keys'
              'kill'
              'last_insert_id'
              'leading'
              'left'
              'length'
              'like'
              'lines'
              'limit'
              'load'
              'local'
              'lock'
              'logs'
              'long'
              'longblob'
              'longtext'
              'low_priority'
              'max'
              'max_rows'
              'match'
              'mediumblob'
              'mediumtext'
              'mediumint'
              'middleint'
              'min_rows'
              'minute'
              'minute_second'
              'modify'
              'month'
              'monthname'
              'myisam'
              'natural'
              'numeric'
              'no'
              'not'
              'null'
              'on'
              'optimize'
              'option'
              'optionally'
              'or'
              'order'
              'outer'
              'outfile'
              'pack_keys'
              'partial'
              'password'
              'precision'
              'primary'
              'procedure'
              'process'
              'processlist'
              'privileges'
              'read'
              'real'
              'references'
              'reload'
              'regexp'
              'rename'
              'replace'
              'restrict'
              'returns'
              'revoke'
              'rlike'
              'row'
              'rows'
              'second'
              'select'
              'set'
              'show'
              'shutdown'
              'smallint'
              'soname'
              'sql_big_tables'
              'sql_big_selects'
              'sql_low_priority_updates'
              'sql_log_off'
              'sql_log_update'
              'sql_select_limit'
              'sql_small_result'
              'sql_big_result'
              'sql_warnings'
              'straight_join'
              'starting'
              'status'
              'string'
              'table'
              'tables'
              'temporary'
              'terminated'
              'text'
              'then'
              'time'
              'timestamp'
              'tinyblob'
              'tinytext'
              'tinyint'
              'trailing'
              'to'
              'type'
              'use'
              'using'
              'unique'
              'unlock'
              'unsigned'
              'update'
              'usage'
              'values'
              'varchar'
              'variables'
              'varying'
              'varbinary'
              'with'
              'write'
              'when'
              'where'
              'year'
              'year_month'
              'zerofill')
          end
          item
            KeywordListNumber = 1
            Name = 'Database Objects'
          end
          item
            KeywordListNumber = 2
            Name = 'PLDoc'
          end
          item
            KeywordListNumber = 3
            Name = 'SQL*Plus'
          end
          item
            KeywordListNumber = 4
            Name = 'User Keywords 1'
          end
          item
            KeywordListNumber = 5
            Name = 'User Keywords 2'
          end
          item
            KeywordListNumber = 6
            Name = 'User Keywords 3'
          end
          item
            KeywordListNumber = 7
            Name = 'User Keywords 4'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'TCL/TK'
        Lexer = 'tcl'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Whitespace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Commentline'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword in Quote'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'In Quote'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifiers'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Substitution'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Subst with Brace'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Modifier'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Expand'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'TCL Keywords'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'TK Keywords'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'iTCL Keywords'
            StyleNumber = 14
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'tkCommands'
            StyleNumber = 15
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 1'
            StyleNumber = 16
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 2'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 3'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User Keywords 4'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment Box'
            StyleNumber = 20
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Block Comment'
            StyleNumber = 21
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'TCL Keywords'
            Keywords.Strings = (
              'after'
              'append'
              'array'
              'auto_execok'
              'auto_import'
              'auto_load'
              'auto_load_index'
              'auto_qualify'
              'beep'
              'bgerror'
              'binary'
              'break'
              'case'
              'catch'
              'cd'
              'clock'
              'close'
              'concat'
              'continue'
              'dde'
              'default'
              'echo'
              'else'
              'elseif'
              'encoding'
              'eof'
              'error'
              'eval'
              'exec'
              'exit'
              'expr'
              'fblocked'
              'fconfigure'
              'fcopy'
              'file'
              'fileevent'
              'flush'
              'for'
              'foreach'
              'format'
              'gets'
              'glob'
              'global'
              'history'
              'http'
              'if'
              'incr'
              'info'
              'interp'
              'join'
              'lappend'
              'lindex'
              'linsert'
              'list'
              'llength'
              'load'
              'loadTk'
              'lrange'
              'lreplace'
              'lsearch'
              'lset'
              'lsort'
              'memory'
              'msgcat'
              'namespace'
              'open'
              'package'
              'pid'
              'pkg::create'
              'pkg_mkIndex'
              'Platform-specific'
              'proc'
              'puts'
              'pwd'
              're_syntax'
              'read'
              'regexp'
              'registry'
              'regsub'
              'rename'
              'resource'
              'return'
              'scan'
              'seek'
              'set'
              'socket'
              'source'
              'split'
              'string'
              'subst'
              'switch'
              'tclLog'
              'tclMacPkgSearch'
              'tclPkgSetup'
              'tclPkgUnknown'
              'tell'
              'time'
              'trace'
              'unknown'
              'unset'
              'update'
              'uplevel'
              'upvar'
              'variable'
              'vwait'
              'while')
          end
          item
            KeywordListNumber = 1
            Name = 'TK Keywords'
            Keywords.Strings = (
              'bell'
              'bind'
              'bindtags'
              'bitmap'
              'button'
              'canvas'
              'checkbutton'
              'clipboard'
              'colors'
              'console'
              'cursors'
              'destroy'
              'entry'
              'event'
              'focus'
              'font'
              'frame'
              'grab'
              'grid'
              'image'
              'Inter-client'
              'keysyms'
              'label'
              'labelframe'
              'listbox'
              'lower'
              'menu'
              'menubutton'
              'message'
              'option'
              'options'
              'pack'
              'panedwindow'
              'photo'
              'place'
              'radiobutton'
              'raise'
              'scale'
              'scrollbar'
              'selection'
              'send'
              'spinbox'
              'text'
              'tk'
              'tk_chooseColor'
              'tk_chooseDirectory'
              'tk_dialog'
              'tk_focusNext'
              'tk_getOpenFile'
              'tk_messageBox'
              'tk_optionMenu'
              'tk_popup'
              'tk_setPalette'
              'tkerror'
              'tkvars'
              'tkwait'
              'toplevel'
              'winfo'
              'wish'
              'wm')
          end
          item
            KeywordListNumber = 2
            Name = 'iTCL Keywords'
            Keywords.Strings = (
              'tk_bisque'
              'tk_chooseColor'
              'tk_dialog'
              'tk_focusFollowsMouse'
              'tk_focusNext'
              'tk_focusPrev'
              'tk_getOpenFile'
              'tk_getSaveFile'
              'tk_messageBox'
              'tk_optionMenu'
              'tk_popup'
              'tk_setPalette'
              'tk_textCopy'
              'tk_textCut'
              'tk_textPaste'
              'tkButtonAutoInvoke'
              'tkButtonDown'
              'tkButtonEnter'
              'tkButtonInvoke'
              'tkButtonLeave'
              'tkButtonUp'
              'tkCancelRepeat'
              'tkCheckRadioDown'
              'tkCheckRadioEnter'
              'tkCheckRadioInvoke'
              'tkColorDialog'
              'tkColorDialog_BuildDialog'
              'tkColorDialog_CancelCmd'
              'tkColorDialog_Config'
              'tkColorDialog_CreateSelector'
              'tkColorDialog_DrawColorScale'
              'tkColorDialog_EnterColorBar'
              'tkColorDialog_HandleRGBEntry'
              'tkColorDialog_HandleSelEntry'
              'tkColorDialog_InitValues'
              'tkColorDialog_LeaveColorBar'
              'tkColorDialog_MoveSelector'
              'tkColorDialog_OkCmd'
              'tkColorDialog_RedrawColorBars'
              'tkColorDialog_RedrawFinalColor'
              'tkColorDialog_ReleaseMouse'
              'tkColorDialog_ResizeColorBars'
              'tkColorDialog_RgbToX'
              'tkColorDialog_SetRGBValue'
              'tkColorDialog_StartMove'
              'tkColorDialog_XToRgb'
              'tkConsoleAbout'
              'tkConsoleBind'
              'tkConsoleExit'
              'tkConsoleHistory'
              'tkConsoleInit'
              'tkConsoleInsert'
              'tkConsoleInvoke'
              'tkConsoleOutput'
              'tkConsolePrompt'
              'tkConsoleSource'
              'tkDarken'
              'tkEntryAutoScan'
              'tkEntryBackspace'
              'tkEntryButton1'
              'tkEntryClosestGap'
              'tkEntryGetSelection'
              'tkEntryInsert'
              'tkEntryKeySelect'
              'tkEntryMouseSelect'
              'tkEntryNextWord'
              'tkEntryPaste'
              'tkEntryPreviousWord'
              'tkEntrySeeInsert'
              'tkEntrySetCursor'
              'tkEntryTranspose'
              'tkEventMotifBindings'
              'tkFDGetFileTypes'
              'tkFirstMenu'
              'tkFocusGroup_BindIn'
              'tkFocusGroup_BindOut'
              'tkFocusGroup_Create'
              'tkFocusGroup_Destroy'
              'tkFocusGroup_In'
              'tkFocusGroup_Out'
              'tkFocusOK'
              'tkGenerateMenuSelect'
              'tkIconList'
              'tkIconList_Add'
              'tkIconList_Arrange'
              'tkIconList_AutoScan'
              'tkIconList_Btn1'
              'tkIconList_Config'
              'tkIconList_Create'
              'tkIconList_CtrlBtn1'
              'tkIconList_Curselection'
              'tkIconList_DeleteAll'
              'tkIconList_Double1'
              'tkIconList_DrawSelection'
              'tkIconList_FocusIn'
              'tkIconList_FocusOut'
              'tkIconList_Get'
              'tkIconList_Goto'
              'tkIconList_Index'
              'tkIconList_Invoke'
              'tkIconList_KeyPress'
              'tkIconList_Leave1'
              'tkIconList_LeftRight'
              'tkIconList_Motion1'
              'tkIconList_Reset'
              'tkIconList_ReturnKey'
              'tkIconList_See'
              'tkIconList_Select'
              'tkIconList_Selection'
              'tkIconList_ShiftBtn1'
              'tkIconList_UpDown'
              'tkListbox'
              'tkListboxAutoScan'
              'tkListboxBeginExtend'
              'tkListboxBeginSelect'
              'tkListboxBeginToggle'
              'tkListboxCancel'
              'tkListboxDataExtend'
              'tkListboxExtendUpDown'
              'tkListboxKeyAccel_Goto'
              'tkListboxKeyAccel_Key'
              'tkListboxKeyAccel_Reset'
              'tkListboxKeyAccel_Set'
              'tkListboxKeyAccel_Unset'
              'tkListboxMotion'
              'tkListboxSelectAll'
              'tkListboxUpDown'
              'tkMbButtonUp'
              'tkMbEnter'
              'tkMbLeave'
              'tkMbMotion'
              'tkMbPost'
              'tkMenuButtonDown'
              'tkMenuDownArrow'
              'tkMenuDup'
              'tkMenuEscape'
              'tkMenuFind'
              'tkMenuFindName'
              'tkMenuFirstEntry'
              'tkMenuInvoke'
              'tkMenuLeave'
              'tkMenuLeftArrow'
              'tkMenuMotion'
              'tkMenuNextEntry'
              'tkMenuNextMenu'
              'tkMenuRightArrow'
              'tkMenuUnpost'
              'tkMenuUpArrow'
              'tkMessageBox'
              'tkMotifFDialog'
              'tkMotifFDialog_ActivateDList'
              'tkMotifFDialog_ActivateFEnt'
              'tkMotifFDialog_ActivateFList'
              'tkMotifFDialog_ActivateSEnt'
              'tkMotifFDialog_BrowseDList'
              'tkMotifFDialog_BrowseFList'
              'tkMotifFDialog_BuildUI'
              'tkMotifFDialog_CancelCmd'
              'tkMotifFDialog_Config'
              'tkMotifFDialog_Create'
              'tkMotifFDialog_FileTypes'
              'tkMotifFDialog_FilterCmd'
              'tkMotifFDialog_InterpFilter'
              'tkMotifFDialog_LoadFiles'
              'tkMotifFDialog_MakeSList'
              'tkMotifFDialog_OkCmd'
              'tkMotifFDialog_SetFilter'
              'tkMotifFDialog_SetListMode'
              'tkMotifFDialog_Update'
              'tkPostOverPoint'
              'tkRecolorTree'
              'tkRestoreOldGrab'
              'tkSaveGrabInfo'
              'tkScaleActivate'
              'tkScaleButton2Down'
              'tkScaleButtonDown'
              'tkScaleControlPress'
              'tkScaleDrag'
              'tkScaleEndDrag'
              'tkScaleIncrement'
              'tkScreenChanged'
              'tkScrollButton2Down'
              'tkScrollButtonDown'
              'tkScrollButtonDrag'
              'tkScrollButtonUp'
              'tkScrollByPages'
              'tkScrollByUnits'
              'tkScrollDrag'
              'tkScrollEndDrag'
              'tkScrollSelect'
              'tkScrollStartDrag'
              'tkScrollTopBottom'
              'tkScrollToPos'
              'tkTabToWindow'
              'tkTearOffMenu'
              'tkTextAutoScan'
              'tkTextButton1'
              'tkTextClosestGap'
              'tkTextInsert'
              'tkTextKeyExtend'
              'tkTextKeySelect'
              'tkTextNextPara'
              'tkTextNextPos'
              'tkTextNextWord'
              'tkTextPaste'
              'tkTextPrevPara'
              'tkTextPrevPos'
              'tkTextPrevWord'
              'tkTextResetAnchor'
              'tkTextScrollPages'
              'tkTextSelectTo'
              'tkTextSetCursor'
              'tkTextTranspose'
              'tkTextUpDownLine'
              'tkTraverseToMenu'
              'tkTraverseWithinMenu')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '##'
        CommentBoxEnd = '##'
        CommentBoxMiddle = '#'
        CommentBlock = '#'
        CommentAtLineStart = True
        CommentStreamStart = '##'
        CommentStreamEnd = '##'
        NumStyleBits = 5
      end
      item
        Name = 'TEX'
        Lexer = 'tex'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Special'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Group'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Symbol'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Command'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Text'
            StyleNumber = 5
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'TeX, eTeX, pdfTeX, Omega'
          end
          item
            KeywordListNumber = 1
            Name = 'ConTeXt Dutch'
          end
          item
            KeywordListNumber = 2
            Name = 'ConTeXt English'
          end
          item
            KeywordListNumber = 3
            Name = 'ConTeXt German'
          end
          item
            KeywordListNumber = 4
            Name = 'ConTeXt Czech'
          end
          item
            KeywordListNumber = 5
            Name = 'ConTeXt Italian'
          end
          item
            KeywordListNumber = 6
            Name = 'ConTeXt Romanian'
          end>
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
      end
      item
        Name = 'VB'
        Lexer = 'vb'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Whitespace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 32639
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Date'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String Not Closed (EOL)'
            StyleNumber = 9
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'begin'
              'case'
              'call'
              'class'
              'continue'
              'do'
              'each'
              'else'
              'elseif'
              'end'
              'erase'
              'error'
              'event'
              'exit'
              'false'
              'for'
              'function'
              'get'
              'gosub'
              'goto'
              'if'
              'implement'
              'in'
              'load'
              'loop'
              'lset'
              'me'
              'mid'
              'new'
              'next'
              'not'
              'nothing'
              'on'
              'or'
              'property'
              'raiseevent'
              'rem'
              'resume'
              'return'
              'rset'
              'select'
              'set'
              'stop'
              'sub'
              'then'
              'to'
              'true'
              'unload'
              'until'
              'wend'
              'while'
              'with'
              'withevents'
              'attribute'
              'alias'
              'as'
              'boolean'
              'byref'
              'byte'
              'byval'
              'const'
              'compare'
              'currency'
              'date'
              'declare'
              'dim'
              'double'
              'enum'
              'explicit'
              'friend'
              'global'
              'integer'
              'let'
              'lib'
              'long'
              'module'
              'object'
              'option'
              'optional'
              'preserve'
              'private'
              'public'
              'redim'
              'single'
              'static'
              'string'
              'type'
              'variant')
          end
          item
            KeywordListNumber = 1
            Name = 'User 1'
          end
          item
            KeywordListNumber = 2
            Name = 'User 2'
          end
          item
            KeywordListNumber = 3
            Name = 'User 3'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = #39
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'VBScript'
        Lexer = 'vbscript'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Whitespace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Preprocessor'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 32639
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Date'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'String Not Closed (EOL)'
            StyleNumber = 9
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'and'
              'begin'
              'case'
              'call'
              'class'
              'continue'
              'do'
              'each'
              'else'
              'elseif'
              'end'
              'erase'
              'error'
              'event'
              'exit'
              'false'
              'for'
              'function'
              'get'
              'gosub'
              'goto'
              'if'
              'implement'
              'in'
              'load'
              'loop'
              'lset'
              'me'
              'mid'
              'new'
              'next'
              'not'
              'nothing'
              'on'
              'or'
              'property'
              'raiseevent'
              'rem'
              'resume'
              'return'
              'rset'
              'select'
              'set'
              'stop'
              'sub'
              'then'
              'to'
              'true'
              'unload'
              'until'
              'wend'
              'while'
              'with'
              'withevents'
              'attribute'
              'alias'
              'as'
              'boolean'
              'byref'
              'byte'
              'byval'
              'const'
              'compare'
              'currency'
              'date'
              'declare'
              'dim'
              'double'
              'enum'
              'explicit'
              'friend'
              'global'
              'integer'
              'let'
              'lib'
              'long'
              'module'
              'object'
              'option'
              'optional'
              'preserve'
              'private'
              'public'
              'redim'
              'single'
              'static'
              'string'
              'type'
              'variant')
          end
          item
            KeywordListNumber = 1
            Name = 'User 1'
          end
          item
            KeywordListNumber = 2
            Name = 'User 2'
          end
          item
            KeywordListNumber = 3
            Name = 'User 3'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = #39
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'VHDL'
        Lexer = 'vhdl'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'WhiteSpace'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bang Comment'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Number'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted string'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Operators?'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Identifier'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clWhite
            BackColor = 2105376
            CharCase = CASE_MIXED
            Name = 'End of line where string is not closed'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clOlive
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Keyword'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Std Operator'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attribute'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 2130048
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Std Function'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 2129952
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Std Package'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 8421408
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Std Type'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 4202624
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'User defined identifiers and tasks'
            StyleNumber = 14
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'access'
              'after'
              'alias'
              'all'
              'architecture'
              'array'
              'assert'
              'attribute'
              'begin'
              'block'
              'body'
              'buffer'
              'bus'
              'case'
              'component'
              'configuration'
              'constant'
              'disconnect'
              'downto'
              'else'
              'elsif'
              'end'
              'entity'
              'exit'
              'file'
              'for'
              'function'
              'generate'
              'generic'
              'group'
              'guarded'
              'if'
              'impure'
              'in'
              'inertial'
              'inout'
              'is'
              'label'
              'library'
              'linkage'
              'literal'
              'loop'
              'map'
              'new'
              'next'
              'null'
              'of'
              'on'
              'open'
              'others'
              'out'
              'package'
              'port'
              'postponed'
              'procedure'
              'process'
              'pure'
              'range'
              'record'
              'register'
              'reject'
              'report'
              'return'
              'select'
              'severity'
              'shared'
              'signal'
              'subtype'
              'then'
              'to'
              'transport'
              'type'
              'unaffected'
              'units'
              'until'
              'use'
              'variable'
              'wait'
              'when'
              'while'
              'with')
          end
          item
            KeywordListNumber = 1
            Name = 'Operators'
            Keywords.Strings = (
              'abs'
              'and'
              'mod'
              'nand'
              'nor'
              'not'
              'or'
              'rem'
              'rol'
              'ror'
              'sla'
              'sll'
              'sra'
              'srl'
              'xnor'
              'xor')
          end
          item
            KeywordListNumber = 2
            Name = 'Attributes'
            Keywords.Strings = (
              'left'
              'right'
              'low'
              'high'
              'ascending'
              'image'
              'value'
              'pos'
              'val'
              'succ'
              'pred'
              'leftof'
              'rightof'
              'base'
              'range'
              'reverse_range'
              'length'
              'delayed'
              'stable'
              'quiet'
              'transaction'
              'event'
              'active'
              'last_event'
              'last_active'
              'last_value'
              'driving'
              'driving_value'
              'simple_name'
              'path_name'
              'instance_name')
          end
          item
            KeywordListNumber = 3
            Name = 'Standard Functions'
            Keywords.Strings = (
              'now'
              'readline'
              'read'
              'writeline'
              'write'
              'endfile'
              'resolved'
              'to_bit'
              'to_bitvector'
              'to_stdulogic'
              'to_stdlogicvector'
              'to_stdulogicvector'
              'to_x01'
              'to_x01z'
              'to_UX01'
              'rising_edge'
              'falling_edge'
              'is_x'
              'shift_left'
              'shift_right'
              'rotate_left'
              'rotate_right'
              'resize'
              'to_integer'
              'to_unsigned'
              'to_signed'
              'std_match'
              'to_01')
          end
          item
            KeywordListNumber = 4
            Name = 'Standard Packages'
            Keywords.Strings = (
              'std'
              'ieee'
              'work'
              'standard'
              'textio'
              'std_logic_1164'
              'std_logic_arith'
              'std_logic_misc'
              'std_logic_signed'
              'std_logic_textio'
              'std_logic_unsigned'
              'numeric_bit'
              'numeric_std'
              'math_complex'
              'math_real'
              'vital_primitives'
              'vital_timing')
          end
          item
            KeywordListNumber = 5
            Name = 'Standard Types'
            Keywords.Strings = (
              'boolean'
              'bit'
              'character'
              'severity_level'
              'integer'
              'real'
              'time'
              'delay_length'
              'natural'
              'positive'
              'string'
              'bit_vector'
              'file_open_kind'
              'file_open_status'
              'line'
              'text'
              'side'
              'width'
              'std_ulogic'
              'std_ulogic_vector'
              'std_logic'
              'std_logic_vector'
              'X01'
              'X01Z'
              'UX01'
              'UX01Z'
              'unsigned'
              'signed')
          end
          item
            KeywordListNumber = 6
            Name = 'User Words'
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '/*'
        CommentBoxEnd = '*/'
        CommentBoxMiddle = '*'
        CommentBlock = '--'
        CommentAtLineStart = True
        CommentStreamStart = '/*'
        CommentStreamEnd = '*/'
        NumStyleBits = 5
      end
      item
        Name = 'VXML'
        Lexer = 'xml'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tags'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Tags'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attributes'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Attributes'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numbers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted strings'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted strings'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other inside tag'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Entities'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML style tag ends'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier start'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier end'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clMaroon
            BackColor = 15790335
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'CDATA'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 160
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML Question'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unquoted values'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML tags <! ... >'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML command'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15793935
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML 1st param'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML double string'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML single string'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML error'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16737843
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML special'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML entity'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML comment'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 6684672
            BackColor = 14732492
            CharCase = CASE_MIXED
            Name = 'SGML block'
            StyleNumber = 31
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Elements and Attributes'
            Keywords.Strings = (
              'assign'
              'audio'
              'block'
              'break'
              'catch'
              'choice'
              'clear'
              'disconnect'
              'else'
              'elseif'
              'emphasis'
              'enumerate'
              'error'
              'exit'
              'field'
              'filled'
              'form'
              'goto'
              'grammar'
              'help'
              'if'
              'initial'
              'link'
              'log'
              'menu'
              'meta'
              'noinput'
              'nomatch'
              'object'
              'option'
              'p'
              'paragraph'
              'param'
              'phoneme'
              'prompt'
              'property'
              'prosody'
              'record'
              'reprompt'
              'return'
              's'
              'say-as'
              'script'
              'sentence'
              'subdialog'
              'submit'
              'throw'
              'transfer'
              'value'
              'var'
              'voice'
              'vxmlaccept'
              'age'
              'alphabet'
              'anchor'
              'application'
              'base'
              'beep'
              'bridge'
              'category'
              'charset'
              'classid'
              'cond'
              'connecttimeout'
              'content'
              'contour'
              'count'
              'dest'
              'destexpr'
              'dtmf'
              'dtmfterm'
              'duration'
              'enctype'
              'event'
              'eventexpr'
              'expr'
              'expritem'
              'fetchtimeout'
              'finalsilence'
              'gender'
              'http-equiv'
              'id'
              'level'
              'maxage'
              'maxstale'
              'maxtime'
              'message'
              'messageexpr'
              'method'
              'mime'
              'modal'
              'mode'
              'name'
              'namelist'
              'next'
              'nextitem'
              'ph'
              'pitch'
              'range'
              'rate'
              'scope'
              'size'
              'sizeexpr'
              'skiplist'
              'slot'
              'src'
              'srcexpr'
              'sub'
              'time'
              'timeexpr'
              'timeout'
              'transferaudio'
              'type'
              'value'
              'variant'
              'version'
              'volume'
              'xml:lang')
          end
          item
            KeywordListNumber = 5
            Name = 'DTD Keywords'
            Keywords.Strings = (
              'public'
              '!doctype')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '<!--'
        CommentBoxEnd = '-->'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '<!--'
        CommentStreamEnd = '-->'
        NumStyleBits = 5
      end
      item
        Name = 'WML'
        Lexer = 'xml'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tags'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Tags'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attributes'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Attributes'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numbers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted strings'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted strings'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 10485920
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other inside tag'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Entities'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Short tag end'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier start'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier end'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = 15790335
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'CDATA'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 160
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML Question'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unquoted values'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML tags <! ... >'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML command'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15793935
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML 1st param'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML double string'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML single string'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML error'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16737843
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML special'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML entity'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML comment'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 6684672
            BackColor = 14732492
            CharCase = CASE_MIXED
            Name = 'SGML block'
            StyleNumber = 31
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Elements and Attributes'
            Keywords.Strings = (
              'a'
              'access'
              'anchor'
              'big'
              'br'
              'em'
              'i'
              'p'
              'reset'
              'small'
              'strong'
              'card'
              'catch'
              'b'
              'do'
              'exit'
              'fieldset'
              'go'
              'head'
              'img'
              'input'
              'link'
              'meta'
              'noop'
              'onevent'
              'optgroup'
              'option'
              'postfield'
              'prev'
              'receive'
              'refresh'
              'select'
              'send'
              'setvar'
              'spawn'
              'table'
              'td'
              'template'
              'throw'
              'timer'
              'tr'
              'u'
              'wml'
              'xml'
              'href'
              'domain'
              'path'
              'title'
              'accesskey'
              'align'
              'id'
              'title'
              'newcontext'
              'ordered'
              'onenterforward'
              'onenterbackward'
              'ontimer'
              'name'
              'onthrow'
              'label'
              'optional'
              'type'
              'sendreferer'
              'method'
              'accept-charset'
              'http-equiv'
              'content'
              'src'
              'localsrc'
              'height'
              'width'
              'vspace'
              'hspace'
              'emptyok'
              'maxlength'
              'tabindex'
              'format'
              'size'
              'rel'
              'onpick'
              'value'
              'multiple'
              'iname'
              'ivalue'
              'onexit'
              'columns'
              'xml:lang'
              'version'
              'encoding')
          end
          item
            KeywordListNumber = 5
            Name = 'DTD Keywords'
            Keywords.Strings = (
              'ELEMENT'
              'DOCTYPE'
              'ATTLIST'
              'ENTITY'
              'NOTATION')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '<!--'
        CommentBoxEnd = '-->'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '<!--'
        CommentStreamEnd = '-->'
        NumStyleBits = 5
      end
      item
        Name = 'XML'
        Lexer = 'xml'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tags'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Tags'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attributes'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Attributes'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numbers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted strings'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted strings'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 14745825
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other inside tag'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Entities'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 14745825
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML style tag ends'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier start'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier end'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'CDATA'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 160
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML Question'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unquoted values'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML tags <! ... >'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML command'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15793935
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML 1st param'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML double string'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML single string'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clMaroon
            CharCase = CASE_MIXED
            Name = 'SGML error'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16737843
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML special'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML entity'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML comment'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 6684672
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'SGML block'
            StyleNumber = 31
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
          end
          item
            KeywordListNumber = 5
            Name = 'SGML Keywords'
            Keywords.Strings = (
              'ELEMENT'
              'DOCTYPE'
              'ATTLIST'
              'ENTITY'
              'NOTATION')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '<!--'
        CommentBoxEnd = '-->'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '<!--'
        CommentStreamEnd = '-->'
        NumStyleBits = 5
      end
      item
        Name = 'XSL'
        Lexer = 'xml'
        Styles = <
          item
            FontName = 'Arial'
            FontSize = 0
            FontStyles = []
            ForeColor = clSilver
            BackColor = clBlack
            CharCase = CASE_MIXED
            Name = 'LineNumbers'
            StyleNumber = 33
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Ok Braces'
            StyleNumber = 34
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Bad Braces'
            StyleNumber = 35
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clBlack
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'Control Chars'
            StyleNumber = 36
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clGray
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Indent Guide'
            StyleNumber = 37
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Default'
            StyleNumber = 0
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Tags'
            StyleNumber = 1
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Tags'
            StyleNumber = 2
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 12624032
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Attributes'
            StyleNumber = 3
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clRed
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unknown Attributes'
            StyleNumber = 4
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 224
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Numbers'
            StyleNumber = 5
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Double quoted strings'
            StyleNumber = 6
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Single quoted strings'
            StyleNumber = 7
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 14745825
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Other inside tag'
            StyleNumber = 8
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Comment'
            StyleNumber = 9
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Entities'
            StyleNumber = 10
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 14745825
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML style tag ends'
            StyleNumber = 11
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier start'
            StyleNumber = 12
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clYellow
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML identifier end'
            StyleNumber = 13
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clSkyBlue
            BackColor = clDefault
            CharCase = CASE_MIXED
            EOLFilled = True
            Name = 'CDATA'
            StyleNumber = 17
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 160
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'XML Question'
            StyleNumber = 18
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clFuchsia
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'Unquoted values'
            StyleNumber = 19
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML tags <! ... >'
            StyleNumber = 21
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = 13684736
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML command'
            StyleNumber = 22
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 15793935
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML 1st param'
            StyleNumber = 23
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML double string'
            StyleNumber = 24
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clLime
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML single string'
            StyleNumber = 25
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = clYellow
            BackColor = clMaroon
            CharCase = CASE_MIXED
            Name = 'SGML error'
            StyleNumber = 26
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 16737843
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML special'
            StyleNumber = 27
          end
          item
            FontSize = 0
            FontStyles = [fsBold]
            ForeColor = clDefault
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML entity'
            StyleNumber = 28
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 9474192
            BackColor = clDefault
            CharCase = CASE_MIXED
            Name = 'SGML comment'
            StyleNumber = 29
          end
          item
            FontSize = 0
            FontStyles = []
            ForeColor = 6684672
            BackColor = clSilver
            CharCase = CASE_MIXED
            Name = 'SGML block'
            StyleNumber = 31
          end>
        Keywords = <
          item
            KeywordListNumber = 0
            Name = 'Keywords'
            Keywords.Strings = (
              'xml'
              'xsl:apply-imports'
              'xsl:apply-templates'
              'xsl:attribute'
              'xsl:attribute-set'
              'xsl:call-template'
              'xsl:choose'
              'xsl:comment'
              'xsl:copy'
              'xsl:copy-of'
              'xsl:decimal-format'
              'xsl:element'
              'xsl:fallback'
              'xsl:for-each'
              'xsl:if'
              'xsl:import'
              'xsl:include'
              'xsl:key'
              'xsl:message'
              'xsl:namespace-alias'
              'xsl:number'
              'xsl:otherwise'
              'xsl:output'
              'xsl:param'
              'xsl:preserve-space'
              'xsl:processing-instruction'
              'xsl:sort'
              'xsl:strip-space'
              'xsl:stylesheet'
              'xsl:template'
              'xsl:text'
              'xsl:transform'
              'xsl:value-of'
              'xsl:variable'
              'xsl:when'
              'xsl:with-param'
              'msxsl:script'
              'msxml:script'
              'xmlns:xsl'
              'xmlns:msxml'
              'elements'
              'indent'
              'match'
              'mode'
              'test'
              'namespace'
              'use-attribute-sets'
              'decimal-separator'
              'grouping-separator'
              'infinity'
              'minus-sign'
              'NaN'
              'percent'
              'per-mille'
              'zero-digit'
              'digit'
              'pattern-separator'
              'use'
              'terminate'
              'stylesheet-prefix'
              'result-prefix'
              'level'
              'count'
              'from'
              'value'
              'format'
              'lang'
              'letter-value'
              'grouping-size'
              'method'
              'version'
              'encoding'
              'omit-xml-declaration'
              'standalone'
              'doctype-public'
              'doctype-system'
              'cdata-section-elements'
              'indent'
              'media-type'
              'implements-prefix'
              'data-type'
              'order'
              'case-order'
              'extension-element-prefixes'
              'exclude-result-prefixes'
              'priority'
              'disable-output-escaping'
              'a'
              'abbr'
              'acronym'
              'address'
              'applet'
              'area'
              'b'
              'base'
              'basefont'
              'bdo'
              'big'
              'blockquote'
              'body'
              'br'
              'button'
              'caption'
              'center'
              'cite'
              'code'
              'col'
              'colgroup'
              'dd'
              'del'
              'dfn'
              'dir'
              'div'
              'dl'
              'dt'
              'em'
              'fieldset'
              'font'
              'form'
              'frame'
              'frameset'
              'h1'
              'h2'
              'h3'
              'h4'
              'h5'
              'h6'
              'head'
              'hr'
              'html'
              'i'
              'iframe'
              'img'
              'input'
              'ins'
              'isindex'
              'kbd'
              'label'
              'legend'
              'li'
              'link'
              'map'
              'menu'
              'meta'
              'noframes'
              'noscript'
              'object'
              'ol'
              'optgroup'
              'option'
              'p'
              'param'
              'pre'
              'q'
              's'
              'samp'
              'script'
              'select'
              'small'
              'span'
              'strike'
              'strong'
              'style'
              'sub'
              'sup'
              'table'
              'tbody'
              'td'
              'textarea'
              'tfoot'
              'th'
              'thead'
              'title'
              'tr'
              'tt'
              'u'
              'ul'
              'var'
              'xml'
              'xmlns'
              'abbr'
              'accept-charset'
              'accept'
              'accesskey'
              'action'
              'align'
              'alink'
              'alt'
              'archive'
              'axis'
              'background'
              'bgcolor'
              'border'
              'cellpadding'
              'cellspacing'
              'char'
              'charoff'
              'charset'
              'checked'
              'cite'
              'class'
              'classid'
              'clear'
              'codebase'
              'codetype'
              'color'
              'cols'
              'colspan'
              'compact'
              'content'
              'coords'
              'data'
              'datafld'
              'dataformatas'
              'datapagesize'
              'datasrc'
              'datetime'
              'declare'
              'defer'
              'dir'
              'disabled'
              'enctype'
              'event'
              'face'
              'for'
              'frame'
              'frameborder'
              'headers'
              'height'
              'href'
              'hreflang'
              'hspace'
              'http-equiv'
              'id'
              'ismap'
              'label'
              'lang'
              'language'
              'leftmargin'
              'link'
              'longdesc'
              'marginwidth'
              'marginheight'
              'maxlength'
              'media'
              'method'
              'multiple'
              'name'
              'nohref'
              'noresize'
              'noshade'
              'nowrap'
              'object'
              'onblur'
              'onchange'
              'onclick'
              'ondblclick'
              'onfocus'
              'onkeydown'
              'onkeypress'
              'onkeyup'
              'onload'
              'onmousedown'
              'onmousemove'
              'onmouseover'
              'onmouseout'
              'onmouseup'
              'onreset'
              'onselect'
              'onsubmit'
              'onunload'
              'profile'
              'prompt'
              'readonly'
              'rel'
              'rev'
              'rows'
              'rowspan'
              'rules'
              'scheme'
              'scope'
              'selected'
              'shape'
              'size'
              'span'
              'src'
              'standby'
              'start'
              'style'
              'summary'
              'tabindex'
              'target'
              'text'
              'title'
              'topmargin'
              'type'
              'usemap'
              'valign'
              'value'
              'valuetype'
              'version'
              'vlink'
              'vspace'
              'width'
              'text'
              'password'
              'checkbox'
              'radio'
              'submit'
              'reset'
              'file'
              'hidden'
              'image'
              'framespacing'
              'scrolling'
              'allowtransparency'
              'bordercolor'
              'OBJECT'
              'PARAM'
              'LI'
              'BODY'
              'UL')
          end
          item
            KeywordListNumber = 5
            Name = 'SGML Keywords'
            Keywords.Strings = (
              'ELEMENT'
              'DOCTYPE'
              'ATTLIST'
              'ENTITY'
              'NOTATION')
          end>
        AssignmentOperator = '='
        EndOfStatementOperator = ';'
        CommentBoxStart = '<!--'
        CommentBoxEnd = '-->'
        CommentBoxMiddle = '*'
        CommentBlock = '//'
        CommentAtLineStart = True
        CommentStreamStart = '<!--'
        CommentStreamEnd = '-->'
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
    Left = 27
    Top = 27
    Width = 361
    Height = 407
    Active = False
    Align = alClient
    BorderStyle = bsNone
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
    TreeOptions.VETFolderOptions = [toFoldersExpandable, toForceHideRecycleBin]
    TreeOptions.VETShellOptions = [toContextMenus]
    TreeOptions.VETSyncOptions = [toCollapseTargetFirst, toExpandTarget, toSelectTarget]
    TreeOptions.VETMiscOptions = [toBrowseExecuteFolder, toBrowseExecuteFolderShortcut, toBrowseExecuteZipFolder, toChangeNotifierThread, toRightButtonSelect, toRemoveContextMenuShortCut, toVETReadOnly]
    TreeOptions.VETImageOptions = [toImages, toThreadedImages, toMarkCutAndCopy]
    Visible = False
    OnDblClick = ExplorerTreeDblClick
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
    Images = SmallImages
    Left = 40
    Top = 104
    object SpTBXItem1: TSpTBXItem
      Caption = 'Copy'
      ImageIndex = 1
      ShortCut = 16451
      OnClick = SpTBXItem1Click
    end
    object SpTBXSeparatorItem2: TSpTBXSeparatorItem
    end
    object SpTBXItem2: TSpTBXItem
      Caption = 'Change Font'
      ImageIndex = 4
      OnClick = SpTBXItem2Click
    end
  end
  object SmallImages: TPngImageList
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000002CF4944415478DA6364C002EC136E646BA873
          856C5BB7B1E4F1E9DCEB40A1EF40FC1F9B5A46648E73F2696E4929D1224707D1
          525E2E16DEE2AC96AAC7E79B5702A51E03F16FBC0678E5DE71B3B0106C37D013
          341216606478FFF60FC3BC3987AFB331BCDC7EF536CB1131FE8F27F7AE4A7905
          54FA17D9358C5A3E17D40C8D05CB9C5D2493C5455919988082AC4063D9591918
          5880EA9819FE3130FFFFFBFFE58B6F6FCF9E7B76ECC0B16B0BF62E0FDD05F5D6
          3FC6D0CA87ABE293E442FFFD011A0B349B8D198239800670B331307001310F07
          03033F27900D14BFF6F0E7FFE609FB27AE98E0D90134E02DA361D0A976FF60ED
          0A3D3D2EB02626A0E3D859200670B1420D606760E0031AC209E47F015A74E0EA
          5F86EAD2D9BD977767F632CA984E371190B4DC6A61252D666325C8202BC5CCC0
          0EB4E9E78FFF0C6F3F33823581F8D202FF19E44518193E035D79FE1903C3E409
          876E6E9F6E9F0A0A447661A5686B31E5E07A034B0B5B336341465D7576A02646
          86A5EBEE7F656567F8CBC5CDCBCEC3C7CF2E26C0C220C0F39FE10FD085F367EE
          BDBF679E5B052334267880585ED6A83A46CF3A2CD1D25A454C5D998BA1BEB4EF
          E4AD93130E72F1C9FF95567756523208773334511564037A6BEF96BDF70F2EF1
          A867448A4EA04F1944B8853474D42C4AD3BDC27CDC362E5E76F2CADEC27940F1
          5B4CCC1CFFCCC20E2E91929555D7D4126338BCE7E083434B9CEB18D1D20533D4
          359202329E563FBF3C66FFFEE1CA2535A7A5AC766EF69D3F7F329A3D7EFC83C1
          DA469EE1F0AE7DF70E2D73AB67C491B880BE641000625E20FE661D732ED9D357
          B5E5D6ADAF0CE2E27C0C7F7E33322C9B94B3FEE5CDB9CBB119806C10C845FF2D
          22CFD4F804E834FCF9CBC870FBDADDB7FBD64E3CF1FCFACCBD40B913F80C8003
          1DCF6DDEF28AFCE9F7AFECFC72FBD4F43BBF7FBC7E0414BE09C244190004C074
          C82007C432D04CF51C8841F9E20BB10680B2080734A6FE40F30138530100D9F4
          EC7ED93C880D0000000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000003684944415478DA6D937D4C536714C69FB7A5
          B75F14B0421510652844E7509369FC00358DBA74A8897F6C19C6299265D930E2
          18FA87A2116210A24949A6C68FC4CF90E8B298282E86048D93E98021D28C8D5B
          1AA4AC7C0470AD94B6947EDD7B3D172559D493FC72DFE4BCE7B9EF799FF332FC
          2F96EEB0B338452423219E156465E8D63185F2D37FBAFEF8A1A3E1EB564A4F11
          22DE0996FD59DB2C8E53998DB3541B972F36E46767272C5998A9D32E5CA0C1F0
          7018A565D555F6DFAB6FD15E17117E4F60F7917EE7764BCA47C6640DE2344AE8
          B58024013A0E98F446B1774FE9157BEBA5CB89691BF825E673F3C5A063B8FDCE
          9713542BC9B09AEB63BE4D16932118043806A8E38071AF845048C21C431495A7
          1E740783515B5EDECA1502E33E6969EDAC7872B3E00A158F135166BDF99F6F93
          39D9C0BFA0F604A0A32B00B73B8C0C1343FA5C254C260EA9695AE8E315D04931
          147D7FB1BEB5A1F41C15F344805DB84D021B930DFD43228647C2E8EDF5222FDF
          084D3C07B59A41A904540A3A9D8C20A0B8E4F4FDB65F2B7EA2E26784971DBF38
          E428FE223DC7E192E0E80B22254940D6D2046A01A05AF8FD2221C198A040A649
          C4773F9E697AF473B99552EDD30207EB7AEF1C2F59B463C4033C6C0BC2EB9BC2
          36CB6CF0BD22A251097A355DA806D0D06972D2194E9E6DFCEB42D5D6A3542C5B
          FB8AED3A6AABB21ECAAD8CC494E8E0A370FCEBC757DB8CF415A7DD1004BA5032
          2F7536C3C70B18AE36F4790E17E7EE8F45428F4960946DDF777755F9B79B9BD7
          2FD36BEB9BA2F04E4CA2B020097C9F004EC5A092FB2077DCE4CCEAC54A740F04
          6207F67D53DBF5F4971B94E9A714D4D5D79D8DE53B33CD032F81BBCD7EECDDAA
          8763906122202151CFA0A599D0521BF25AA79170E27CE393FABA928AF197839D
          B280A2F0E0AD2D6BF2CDD7065ED83DAE01BF5477CC922B4185573E1153E1377F
          8FA3F9C84861C8CD52A0D325E07663CBBDDA920D65ECED44EA388D3E27129A5C
          34376BCD9CF357EF9DFC7C6D4AA28D2E329D7A4F4E222BA99D404482733422F4
          0C8EFBDB5B9AFF3C73A4B0664640218B10064259667D5E73A868C5EE24038373
          2C26F1FD9EC0DFDD3D23DDB6A77D8ECEDF9C3DB6C78392288ED15E3BC3FBC12C
          45D6E539CB5657BA877815DFD134DAF3BCC9150AFA3CB26D849B90D7DEE939C0
          8783DCC73C623EA19AD92CCF1541AF0621F91DC8CFFB35584165D3ADAD936800
          00000049454E44AE426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000002CC4944415478DAA5935948545118C7FFE7CE
          A2337373BC33602EA5919A590D812F0A194C4496F46498F560BDD74390819524
          410BF5503D34E1831265699612960881A563A99553A93952D9622E3953CE3E3A
          CBBDB3DC8E33524104421FFCE19C0FCE8F6FF91F82FF0C32681EBBF2E6937AB7
          664530A2E4D4845586A150885024124824002F880804097C4E01CCE820E625A9
          8C98A9192DDFAE3B44DF7B494BC750DFD7C7A3C59B93C7F025590FB6680752D2
          E4E038202101F07800DB5C14DA4E0398C80C268726C0EBF6CC1D3E7B603F0598
          495B477F8FFB6EDBB6756B02701694C3A6DA88D5EBD3A14E12219301F37E02F7
          0707327ACFC1BA350FA6D66E6C1053EC95F575D514D04D6E759A8D6E7EAD3E57
          F60CD3760F48F65E68B5044AA50826D60281D7C623F3512D24E96E7C1E188793
          2B711C35D4D6504017B9D1FEDAD865D6E9D7644421910A484D538165E3E5330C
          100A017E814170CA06F2BC13732116FEEC558ECBC7B79C8C010C2D23C6E1E11F
          FAB29CA730271C01C36AA1500272399D300122112018007C4129BC3E60F67B08
          5CC4E4A83B551C0734B53E3066FBCFE88B728730682943BBBB052A56069934F2
          0B20084080423C5E1ED3B32EAC4C7CEFB87961671C70F5FA43630E7F5E5F5A61
          42DF40296EBFBB0756AD805C262E01440A88627E8187CB3D8F198B1359C9138E
          FB86B238A0EA628FF1558F49BFAF641C5DE31540523E542A25E409523094100E
          47100CF214E08F01BE595DC84FB73A9E34562ECDA0FD8EB1A1DFA2E738163E7B
          2A162653909828A52662680504D1A8480719A6DB10681B3CEC2E3F0AF33CCEDE
          A683276280E6A99A970DAEE642442310A63781EBAB0723CA2092E86FBBFE7110
          420C745956CFA5AA82EA18A07BE4DAB117336F77F99C7E4E2A68249A7001CDD3
          FD41FCDBF7545191109F7BD2565B73BA915E7B1773495439541954F265FE21BA
          1B58A83E2E02A4540A2A6A1D48960958EC8FA7F293653EF867FC04447931828E
          5166B70000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000003044944415478DA6D936948545114C7FFF7BD
          6793E98C4B422A4A5610950865D287A088B0F063A93181116544611161697B91
          468966619B98B44D818520D23206A54659992285F5C1A919DAB4D2B119A7199D
          E56D9DF74621A50B7F78E7BE7B7EF77FCEE1324C59DF077D4BEF3D0F9D9C15C7
          2F48499E260503325314559565154111D3DFDBBD1F6F56980BBFF67538E97890
          4D24AAAA1A218AD29E7E174E3CE9F41937AC8A465C8C3009EEF52B3876F1D58B
          9A032B8E53F88134AC037E393DF1D1C619751E51C8EFFBE487CD3E861D79F1E0
          383609F0D325635351D5E3B67B87EA297C491A644FFB820B3353843B41896506
          24C0DAE686CF2BA2B470D6D4EA30302CC1BCFDF4A397CD272E53D84972B30B0F
          3C774D11CC3CEA93A0E9D75008E9730DD8B23E811C4C060CB9656CDD77ABC37A
          635B39855DA41176ABDDDDB02ECBB431D2407D0083C0038ACAA0B99F00F84540
          73A7482A8E54B5DAEACAD794D2F62BBD07D54D9F0F6E593BFB8C81325ADFCA08
          D1615551755076160F9567708D85017133004BA37DA46C5F4EA9CFE5B012E007
          2BBDD29D6D5E9B713F739E2172D0AD8D4A05CF855D88E4C84FB1AC00A2C230D3
          04F4F6BAE5E2E203971C3DF5B50470B0DCA24B09050505DDB9CB63D3BA6C0A3E
          7E57201020483786E47009811020D044172F121085100A77D5B6F4B4EC2DA35F
          BDDA9CF89AA6FE879B7392733C64F5C770F8463240A500493180D3470DF402D1
          460EA92619FB8F36BF7B783DFF10E5BED1077DFC9ABD6657FE9C3D811007DB17
          99EC021E3F20C961900E24996239A4A70215D5CFBE58CEAE2EA1D4173AE0F055
          47E5EEFCB41259E5F0DBA5E8F687E8D6003554A2446D2249462096009CA0A2B2
          BA63C052BDF220A5B6EB8053968186A2BCC48DAE3172F06DBC04841DD0130085
          883130445113138D0AF69634DBAC96BCD3B4DDC6769E774625C6041B97CD8F58
          F2C737CACB8ACC298A964C200D40E318F54BF21FEF98C4C0430C32E1E68DDBAF
          FB7BCF5908D0A139D0349394419A4D9A86B081A94BDB53C6BFA9DDB0936C13AF
          C5A0B924458E03FF07C03F006DC0D4258CFE05EDB463B55411234A0000000049
          454E44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000003334944415478DA75936D68536714C7FF37C9
          BDCF73736FDEDAA46B612D82036515ACB315ED97E984C1860561A2C804D10FE2
          1BB313641B2D2DD2A2300B755B3F0C3FC870CCC160D0229DF395FAD2C66A6D6D
          AC6F696BE3DAA6A96DDADAE426374973B3D310C18A5EF871B9F79CF37BCE7378
          1E016F3D89DF7E5CB960B66C0257D643B51705028173A5077E68A3508C48BF9D
          2FBCF9A1FF5ABF4292D82D41B67A904A022FC781A96066D87BA3ADEA7EB8FA89
          969EA0B4E47B05F1A6A375DC663F0E5D03DA7F075E8529C304D85DA80BE8C71A
          FC73E7292D4418EF14244F1EEC13557B191EF7007D37019B0BE032203278A346
          4FE5E5C1C394F630B79DA502EDFB9DE53297BD822459D0739D7E4401C506482C
          2B889899F6C5C581EACEC9B9F65C17992582F891AA5AAED81A9024F9D040B630
          914CC34412D1E9CAAEF9CB58E8AF6FAEF81AB6B6548CB61EBE37BF44903CF8F9
          0391CBAB11990322B3B4BA1DC9113F4C360FA2F60F305CC630B4D199E82B8C8D
          47139AE0EB79D1746BFBE0F9AC40DB55B15666EC8E2052FB091D305B00AB024C
          8630198FE1F677AB31BC414687BF1FFF8D05C12C141F3775F67E3D569D15C4BF
          FAB88633D698DDAF5505180DCEC4109C9846C711379E955BF06F57178C8C0127
          5790A677F842EC92AF71BC45087E56682DB0F24766515A0697077017D1E439F4
          6014D7D668B8B95BC1F5DEFB988D45F049C947D0A843669632FD75A3E79EB74E
          FD29C43F756EE69274051626606519E02489C8D1F5C83FD9FE2D9CFDCA34F33D
          1F4209C9B92841E556E499D5C4C51DBED3A187AF5A854485E5AC248A7B905F08
          ACDB0CC80A667441DB76B7ED52DE29F7969189A09436D2D96207C54AF20B60CB
          58E30809FEE6CA7F0E084F4A51952FE084A77CC32AA37CA3118EE9D1B3DEC7DD
          7FAB4F47F851B62F1E8941956458CC26786C4E14532779CCB6D0F9D3B3D60BF5
          BD671687A8ACB562D5A1F5A57BBD296EFCD1ED1B8B2553A192ED2E21FF90F2B3
          93CBB25B75203565CCBC187DA97D5959A176B70C765C6D1EE8A0DABB8B02D3A2
          842820DCB9733E43448A6B1D5B8A4A5DFB3F54DD8E1B354F2F877DD1616E1775
          7D3E15A178801814DE38D26642CA095EDF3807B19C28261608BA9E98CDC51725
          DAFF26E336FFA14420920000000049454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000003774944415478DA75536D4C5367183DEF054B
          EDAD55705AD8002B7E11E95CB68C49068668A661C444B7C444CD8499ECC7884C
          CD962DC4ECC7B2C1C87EE858FCB3252C0B8126DB5CF8D0616442C4DE6D20C82A
          48DBB5DCF2D1162CC5D2C2EDB7A5774F0D24FBC8DEE4246FF29E73F2BCE7791E
          86FF39DB0F091BD629F93D6A15579EFD8CB2321C6705F38E8ED3D6BB7563F41C
          26C8291EFBB7F08B6F5DA5DDBF462E6CD372FBF5859AFCA23D3C76E994B86DF4
          E3F2974D9F4E0DD6B7116D9AF0E43F067D66A9884F5308E23CCBDCBB331D4F64
          8628D136AB81095B0417CE9D6B768E7ED74CD45415917F187C7D37A82D2E58DF
          AF4E6385030E19F9B91CD671C07A626878E0B7D115583E3C36BA69E666F7ED90
          B2B93F1271916CE5A9C137BDB3AADDDBB67694EE483F229822B0FBD2B16F9317
          CA0C0EEAFC1CB87CC052FB3554FE590F45348C3FC490ADDD116968F405BAD89B
          E745C54735D99773B2F95AE75C1C378418F2E0C471A501BC620522DB0F71598B
          8A440B32036E60660EB27F11AD23C181EA497F0D3B5065AD3B5EF95C639E8E7F
          9AABCF13C5ABE68FB1AF240D88A5213CFB18A1C7216CC9D5401EB781057CB875
          7F61EEDD315FEB4C22D1C30E543F6CAC3DA3AB2B79590D8E3EE4F2020B9DD750
          BAFC3D36EB344092FE180C415E0C8049124C63F3D21B46571B89EFD1CB102B39
          2954BD7D626FCBC9A359084729B40CC04BF99ADA477070E8036CCD53418E934B
          3008169260307AA6CF58BD57A958810C2CACECADBEF28365855D97DE79766338
          06F06460F7008E3BBFE3357713D45E17E444128CC243909CA520FA27225386B9
          E4E7CD52F00756547E6963D9E1EA5B8D177796F04A0E9E65AAAB671C8734D791
          E599008CF7100BC7B1E88F2187F3D3F850355214ADA22C5405509B6A2377ECBC
          50577FF19506FD76057E36469137F8095ED0CE02378C40680981FC62582BEAA1
          ECBC8ADD26031E6A5F926AA6E32D0FC4F1CE94013B7CB6EDC553272A85B3AF67
          AAEC6E19EEAE1FF17CDF67D83265C652560E3C0DBF40DAA5C7B0C91F09DEEF0D
          0C5A06463A0C5FDD9493C981B549CC78EF8AEDA7F74F171CD569D361A14E0CF7
          8AC8EC694A4CE6EA7DF6ACDC47E2F09D49CB708F383B697E44FC05828330B166
          C02AAAAF14971D39D5B541C5D476CB8873DAF1C0691EEAB639AD43EEE44A6291
          381400682691BA0708CBA9ADFCFB3229093B087A020D00965605BE55417815D4
          2B24D6D6F92F6B78879839DCF7A80000000049454E44AE426082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000003424944415478DA85936B6C4B6118C79FB7ED
          565D47B16633BACDDC82E18B65047149CCD892C91642885B5C82C888907D9048
          08C307971A896B843122C62A623213626163CC65B360D6ADB65A6D6BEBF4F4DC
          CFCEEB39D5253E48BCC9EFCBFB3ECFFFFC9FCB21F09F73C2661F32735CDC93F4
          C1F2E43A8FE27A1A50CF96324C233E49884606024BADB6146D78BCB6B3D3EBD3
          1F10AADF3F9D37F9D2FC59891B211804CA09E0FF2928654D9CF36A1F77FA8322
          F9220217478E9A3777DBC23B167B3C7D78AEA6ACAAC573DEA5881DAE1919DB73
          D7679E34F161A0DFBD404221008103EF0F5E3EF749BE78C8CF1C21171293C62F
          DAB7B4266D41462A081248BE0034557FF43CBED77875CD9EDC5D8E09F621F47D
          0B40B70F08C703F01C5434B1ED25EE7059A32457920759139D79FBF28AA8D902
          94E5C0106B044D9440F0FAC1929A08100C01F9FA0D009389108686CF0CB3BCA1
          B7DCA3AA2FD07C037126DA0B0A17A55D732C981A4F4D66AC1ECB5755208A0C94
          612389C00B40781E981E96E65779EF3E17841A4CAE43DAF41E580BAC969C4D33
          D20E2ECE9D9261B098814A3280AC60BD0222021105E0FD2CECA8F63EB9D21B7A
          144D6E4642BA8001B121E9D5998E1BD9D96327D238EB1F01118524144021E117
          0FC7EBFAEA0F7B19A748692DC677FF3D46434972F2ACD56BA757A62A81040AD1
          6BDD8984E3C69E105104352CC0DB2EC97DDAA31695B3DC338C102291171C8EA4
          85BB97BC4C9F33618CF6BC1E9BD616C9270ABAD07B814E7401DD8DCE975EC2DE
          F4C59E3A100C392302B5EB722AE614E717D2E65680AA6A4CC226520A3D7E59EB
          4717C956D51071A397A488D011328987BA626E5E0EF167C8FDAC49C579252B8F
          1A70F1E8F5DB40024180181328523FEC7EC5D6BE0B4B6DFB532D39B387C9C956
          2200C31BB4AD6ED3A35BAC5CA53793B8A6A59F5FB2216B4B8C1B67DDFC15C01C
          1BD9E4D24FDA979D9D4C39EE734B82D120AEB299F3560DD79655068CADC702BC
          0B83DE204D24CD68B2EF1D3DF4607E82BA39659068D26752D36DEA59D12A5C0F
          68FDF5D140B40509C868C48EF421B89ED0A3F740FFE488ECB841390536E33A33
          21494EBFF4F8A3A4BCC2FBD7881BC1E2C1A8EF0C1217FD1371CB401918630C32
          1449414645EFDA910E841BF833FF757E0305C695370A2799E80000000049454E
          44AE426082}
        Name = 'PngImage6'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000003774944415478DA7D935B6C145518C7FFB3BB
          33BB3BB3F70BF4C2B6ECC56E6D8BD44690B4B196F8A2184924E2B50F90184950
          13D39AFAA08DA46B2360134362220F9A12356980122F142242DAD4409B6AD71B
          68B9D4B6D0CE9676B7C3B2CC76E7D619CF3690101F38C92FE79CEF3BE79F93F3
          FF3E0A0F18E713317BE523E176BAACE4613523AC3D7EF4F78EB623A909929208
          46F10CF520817FBFA8DF137EE599C314AD03BA82D1DEA1E16303F3071A6B7D73
          2F1E9C280AADAC0ACC0F3C65BEC50B518B8BABB5BAD93A4A93EBEC7EAE9AF3BA
          AA4C7687CDD0DD304C3E285240D3AC1B84B9E4D1B1FA9D87F692AB196AA6AFB1
          D3BB21BA8B76D8D640D51D34CD80A2DDC815D6C0642D07E774C3CCFAC95B2D50
          C59C2169AEC2D5D113534FBFFAF1BB4BE24A924A9F7FEE97C063D14DC865A1CA
          5598596941361F42596910FC8286F5EC00BCCA2CD4FC32116421DB2AA4A9E9C9
          9B3B5EDAD7359356CF5293FD8D5F479B42AD9045E4F5060C66DE804563110AF9
          706D4A809B6F83D3B5886B16150B411F1AAC71D53157483DFFDAA1EED925F527
          EAEF238FEEAF690EBE07F90E72DA43B8E13980A5E512087780E4388FEBEC76E8
          F51424C60C492B20BDA8A07DB1866FDF3B90E005F50C35F4516C67F376EF3193
          5140DE5C8D61B507E98C014EBF0463F234BE8B0CE34F97807C76197EA79378C7
          A023159D7F67CF70D7CDDBEA8F54EF5B95B11776D8FE70B8644EB1C6C1339B61
          3516B0D6AF4018BB82D7E51B98F029F0586CF0720E98350BD69F14673E4F4C77
          111706A9276B9CD6AFDE0F8C5444C406C914832D5A413C27BECB80309EC2B6EC
          45E4C22CD639BC70DAEC703276E4AE8BF2A9CFAE1C57BE9712C53AA0460E86BB
          B63C2E7C203344A0C4054D503072398B1F3202BEA4D2886F2C47281000C7D8E0
          6639F8BD2EF4755F18BFDC3DDFB65A48FB5BCBE3BB9ED5478311BBD764277EDF
          B2E89D6796844FAC82BBA1A9945E17F4C3C3B170101B4BBC1EFC766E5AF8B635
          79D8108DA17BA5CC0C26C23D5571E9E59F9314DF774EFCEB643237C16C318737
          7D18D95D5B57465B29063E8713524ED33FDD76BA5FB9A49D25F72EDC13A09EA8
          614B176E6B1BAFF20A293BE4092982686B61B66EEDA8DEB7B929E6F790E7F7EC
          3E35C67F23F493DC08E1E2FDCD44135C0416AB5F0891A0166374BDB9A5F9EDEA
          4E5D333C436FFED30B0D4912FF9590FE7F37DEBF37EECE268293504988DC152D
          76E26C71FD1F8FD95FB60098A83E0000000049454E44AE426082}
        Name = 'PngImage7'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000002E64944415478DA7D937B48D35114C7CF4FB7
          351FDB7CB5B96592A52514094E322D44AB3F12C5C81864261168A4D8030D1FA9
          4521F6D2241F8815862188C32051902528D428262BDFB9A699395D6EC6743AB7
          E91EBFCEAF8DB104BBF0E1B27BCFF7BB73CF393F02DC96A9762FCDCEB53C9C56
          92DD51F7E607F16803B1C37F16E1FE43DF7220917DD27F60650E468625EA376C
          0F724A785FD585579B886D5B83E9BBA15E5C3E2D917EEC60BDD6EFDA3EB33500
          426855A0687B2716961A2A30640159DFD6C0240E6E62C6045CD53072C1939D0F
          2C16C007719DF6ECE5E24706A3F913868C236BDB1A48AE071F8A4E623FB7C6E4
          C5D1FC6E40902F80ECEB9AA9BB5FA1E0ED0CD0CCAAC941AEC09F25970EB47436
          88A69C4F22DD6BC09457F2CBC3CEC7951998AF402060C30686A8752408020998
          5924618320A05FAA96175FD89589F12A2A717703E2FBD390623343973408D59C
          B49CDC58A607C09C86046F26754BC0AA8904B59E848A82D28A41C9E356675DEC
          AE2E64C4D082DAE556C1B974515CD993D7D5617CA6EF8615C06A73FC8D05F7D9
          DF247476F4BE6FBC935284A76388D1BD8D74C49BE24A69D7A5DB85690F7630F0
          B15687D88E2FD6AE922093CFA89F958B8AE6A687FA3076C965909C23F614C6A7
          9E5AD7AF8587F26C71A927F89974BA436CC351B222AB6680E149E3E6CBEA5B35
          5FFA9B5A5036EB322869369CC94CF179CB61390A63B638D2A7C47F0D30030396
          4DF1C342B6D616347FEC6D788161132E83C2FA4551FA69AE9800D23EBFB062D8
          13CAF1F5F2F2F4B0581D62CA44BB42C2E437A3A5A7AD4A2CEDAE6A44D988CBE0
          F0F16CCEFEC88864D5CC68E4F8E7015B4E497BCAC5AC8458CA60D399C9D23209
          CBD889F1A111654351741ECAE4EE45A4217E080F61F8F3227C443935D9C2F823
          295C3E3788462740B76C07C5C44F5D4F5B65F798B4458C71B27F3E265CD87DF0
          74CE07B573336E76E4471D4DC852AB7E1947659229795F9DDCA0FFA5C4BB5144
          B9D560EB9853590522E1C86EE7B9C63989D46EF803C67836658D130590000000
          0049454E44AE426082}
        Name = 'PngImage8'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000002944944415478DA636400025D2D3D563E5E29
          A9FF7FFF7B0A09C97B48ABA8393EBA73E5D6FD7BA766DDB8736D0550C93720FE
          CB8005308208031DE32203BDA86A554D532193003D065E697E861B679E30AC9D
          D0CC70E1FC96EAA7CF9FCD012A7B8BCD10B0011AAA06E24CCCECD6CA8AC69D1E
          91892A2A8E260C1F3E3130EC5DB894E1D0EAA697B71FDD8DF8FBF7EF39A0D24F
          580D0002562016E2E6E23471B24D5C66179DC177E7CA69860BFB96337CFEFCF4
          EFC3C70F2BBF7EFBB60AA8E61110FFC766000830033197B181ED1209510D3F46
          2E660655AB1086D3BB66325C3DB36BD6FB8F1FA702E5AF03F16F5C0680F9BA1A
          46955A46AEAD76098D0CDF7FB1336C9B9EC670F9F8EAF5AFDF7DE801CA5F8006
          284E03181464A483CD9C93D6584736019DCFC070627D0BD02B934E3E79F1BA06
          287D1A883FE2354051463A40CB3C68BD5DEC24869B67F6339CDB54CBF0FDCBAB
          B7B71FDCCDFAF7EFDF01A09257780D5055560E101657592FA1EAC070EBF86206
          03A7188647978E337CFCF0F2E8BD07D70ABE7EFB7219A8EC274E03941515ED59
          5958F6B1B0F131D98636303886F8303C3AB787E1DCF6DD0C1FDF7E7871EFE189
          25D76F5E6A032A057A90E10F8601D29292621C6CCCF7AC43BAB85D2223194485
          1918C4241818B64C5AC7F0F8F24B861DFBBBA63D79FA602E50E94D20FE8A6180
          88B0301B3F0FF7590D131F9DD4D6A960CD07176F64B876E81AC3A1E3F3F63F7C
          72672350D95120BE068A110C0340DE5294934BE3E5169E61E71FC320262EC770
          6ED7F1FF672EAE3FF0E4D9FD5D4079508ABC08C46F40491B9B0120C0272F2B57
          292A289F2126A6CC79F3EEA9F377EF5FDB04D57C09885F83FC8F35109152A508
          106B00B11294FF1088AF42A3F10FCE5840022C40CC03C4BC40CC040DF54FC89A
          410000E729F011C250FA340000000049454E44AE426082}
        Name = 'PngImage9'
        Background = clWindow
      end>
    Left = 40
    Top = 136
  end
  object LargeImages: TPngImageList
    Height = 32
    Width = 32
    PngImages = <
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000007C84944415478DAC5970B5054D71980FF7BEF
          EEDD370BFB825D64650910540411E45511C5D824DA8E3391D638D3B429B5D5E6
          3562D1265363122DADC446C740AC146B6D1A93A8A049DB686C144509190AF151
          4107010DF2589E2E2CECB2EFDBFFDCBD5B4932664C87B467E69F73F7DE73CEFF
          9DFF75CE52F07F6ED4D79DF05CE9676BC4224818E93EFD9771EB89AE9A9A6381
          FF0980549B17664858FBC8B7962C2A8D8A929ADFAEDC553E706DE76BF8C9FA8D
          03A866AC9939B7606BD9B225868717E6AAC3953206366F7EEF6AC3B1754FFB3D
          83F53884FB4600E4FA02C3EC827DC56969AA752B57E822147211707E045202EC
          DEF3AFE1A3BFFFE1CB5EFB95FD38D43DED00D1598796CF4ACB797AE5770DDFB6
          58642296A181C27D320C02C801F6567579AA2B9F7A1DE3601B0E1F9F36006DE2
          C6F9F10BD6FF7CF9A386B5F35255201214D37450B90867C8A40067CFDBE0E3FA
          8E3E87D377C1EDA16E3826DC7D03EDEF748D0EB57671018FD56DFBA7ED6B01B0
          AA59D2E8F915ABB3F3937E95971711176D923144311940A3623101802088883C
          530108043001021C78DC7E703AFDBEE161EFC4F5767BFFB5B63B5D9F36FCBDD6
          611F383D76ABE2127C458C508C5823894EDF9D35376BF1CE45F99A8C07939474
          C017FC4853C2AE0508028029C8038444CC047B16DF4BC418372C3EE3BBFE012F
          345C1CF7BFFBB75BE79AEBAADEB4757FF0BECFD533F62580B8456F152D59FED0
          F6FCC51A935C8641C65140D1415363C70330424F764F2C41C08842F29E45A58C
          0022A682CA454C10448A63FA063D50DB681F2F2BFFA8FAD6A58A5DAE3B0DAD53
          2D422D5BDFF6E1933F897B5844B6C60517237627BBA6A82900A1DD5241105674
          D7028CA0982CC1F782CBC86FD2934A75B5CB0BE5076F0F1EDB5F5C64B77E580B
          9C77920798BFAAE94F2B57CD7972D66C19AF9087A0886F82CA183AF89BF4844D
          242C4ADE8500084C0844CA04A1A5021099E7F0000C3B007A6C7ED85571A9EDF4
          BBCF973806CE9CC4E5FC943165DBE3C607571FC85810294B495580D128E24D4C
          4D8901DEF7A12C10DCC388823DCB7C1E84985FC2DCB50459C78E55A2DF0E3084
          103731360E1DB8DC59FBE7A5DFE17CE3ED94529F97199BB3B75AA992C4444629
          2033530709F1624C358A9FCC84A25FF0390F20BAAB442AC40023808582522200
          609280DD85B1200058470370B17914F6FF66FDF3E33D472B295619A79E31BF6C
          8FC698F284444AD14A250B26931A16642821DAC460640741C862211710F3365E
          F5819F0B061B8989702C4E1A150D3A3507110A1A22542408297063468DA2B7FB
          B0540DA258477C60ED73C3BE57779FEA6E7E71035F07588525D198BCB9546B5E
          B85CAB53CAA5B87BAD460E66B30AD25224587AA9604608BB9420C485CB5E8830
          88C0EBE1C08B4ABC6E0E7CE8EB803FC05BCA140E6089A220C1CC800733EB3696
          A5010230ECE5010EEDAD6ABC7161E373532BA1561691BED098FC6C494C7C667A
          A4512593625A86A964F080450E7312452097507C5C10F3D65FF68158E1079F17
          F87245D33445938FA88C00391C1C4C38FC7C36C5E82988318BC089E960C5B4EC
          ED71C191AAFD4D1D1F976CF862299632AC2E496359FDFD07D2D7AE8B8D3368B4
          3A16CDCE801E2D926811435C0CCD5BE2C479179CFCEBD9DEC1AEC67699324AA2
          501BD51186999126B3295CAF5731111A1688F3B04282CBC5F116D419682C683E
          B87DDB05C70FFEB1A9B3E1CB00A1261349A2322293D617A5E4AD7E2C2E5EA7C2
          0529BF8F81282D0BBA701A3A7A7D70A4F277175AEBB66CC7F1BD281214A55835
          3B41AE494B36253C949B94969F9C9018A990CB58F0A26BDC931C664F001C4E27
          9C78E760D3CD4FEE0D409A9862A406B5E9D1C763E7FDF447B9059973CD33A540
          CCCC604AB0320E2A7794D7B59CD9F4148E6D17AA1B1D02A1C46AF38CB4D217E3
          5357AC88895180252E02CF0C8E97F18949F8474D55D3678D9B36DCCF85842C68
          D427153F3B27BBF0B1258FA4C41A8D2CF8F15E50B1FDF573AD677980360816BC
          FF3486D548E372F7BC312B3DBFA8BFCF09F1F15A30C78681DF87998110472AB7
          7ED4DF5AB6E57EAF64E84EB18E55C6E724E5BD5292B57861268545EC78E5C69A
          A1CEA32FE1F78E2F9E78E6DCB75625A6E45628144C94ED8E073C5E80AC6C139E
          1D62F0E2F3E17D5B4E585B5EBD6F805043135346893A351B9F63DDF69636E07C
          E749B10B0D50E80BCCC6D96BD7CCCBC9DB16A616B343832E181BF5623006203B
          271A64241EBC1C026CFDC0DA72FF16F8BC35305B889F513C82727EF7EA993FB0
          64ADF8F5613CD2E7B22C2DB5D93C303CE4863B236E10E1CE331618318D69181B
          F3427565F1E1918E3FFCF6BF01B86733CEDBF9CCA6D267CA4931EAB7BA616484
          E4BC934FC3CC4C2388F1B0F0B80370A9B9D3517768E94B7E577FF5B402C46494
          15FF7247F12ED7A417AEB7DA51B91BC2C224187C6A3C5BC478D7E0E05AEB90B7
          FEFD976B07DBAAC895FE93E90548DF51BCACB00801FCA0508821CAA8C41E778D
          E5DA6EF77137AE773BCF55BF70D2DEFBDE71BC5E9FC22923D30A60487EE5891F
          17FFE24DBD9EE57D1D08042BA1B5DF0D8D67CF75773455D4D9ADA76A70E8A728
          3DC017EE696CDAC492F4EFFDEC85C6588B92B15A1DBE9E5BFD8E968BF5DD7D37
          4E5E19EF3D4E767C5D104768CEB402886531D2A4A507DEC6BB446A6FC7999BB6
          9EF3D7266D579A39FF44277E2642AEEA9EA973A615206408148BF03C8C3284E2
          847B5CCDA71DA0BA9ACF2C91A0D05F5858F895FF1BFF0DD8B4CC89212A847D00
          00000049454E44AE426082}
        Name = 'PngImage0'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F00000A004944415478DAA5570B7054E515FEEEDDBB
          EFBC13B249369B184268688002C601150368449446A4E25006B095411105149D
          A21D503AB563E421A2480B14292AC45641A0B51841885A020242930009E4B949
          D83C36BB9BEC2BD9D7BDB7E7DF5D91A09D12FBEFFCB3F7FE7BEF7FBE73CEF79D
          F32F87218EE4ACE2385912330A8AFF58C2F1285229B93473D58E4D8DA737EDA7
          9F0343DD8FBB99870C23172863878D9B186B289CA8D4661493D1AC1CA33247AD
          5168AE768B5C57FD817D554756AEA0473BFF6F0009C6E982248BA9FAA431B986
          518BC70ABCE25EBD5E31C194A6310D37AA30FEA75AE4E7A8919CAC8256CDE1B5
          77AC38B46FD7F18BC77EFB14BDDE4053FA51004C85EB3264599E186B7CF05EFA
          FED9B06465CE08936AD8ED63F4427EAE1606830A0AA502EE100F5F88621D04B2
          9281FD9FD8F1DE7B3B8FD71C7DF169DAA67EC80046955CF81DCFE13E438A7A82
          D1A0521516E8909FAB417E9E0E9CC0C3DECFA1AF1FF09341BA854A0128F8C875
          4622F0C549275E7F73DBF1AAF21F09A0E0C18BAE92A989B10B1F4A82441E0638
          01DE00877E3FED2493318A91928C2905806700E89EC8170691160F1CAB7461DB
          AEFD5F9FF870D122DAEFCA90014C5E78D9B365B549DF12D44114013579A8BC6E
          0AFC771ED32D0421B2CE46520C50F98D07DBDFFFFC52F9CED90B69A92639FB5E
          1564292336F5D6BCACB18BC70B02378DC7C0D58A5D935689A17E3B3D230F0230
          6DD115CFA655267DA7A40D1342C53CA50B151FF19E1964003442C4F3019F0C4B
          B78CE438E027593C1A5AFC58B7ED5F8D5F1E7AF3E5848CBB1252721E2AE2042E
          3FD3A0CA361984786BAFC43BDC62F0C4DE19B3DCF62B5F90898141008A1FAFF7
          AC7F2E53EF5269C3C1539321219A67C83206E8F15EB7881E0771C125C31F90A1
          57CB300E13314079AA3CE7416D935F4E4E50C859696ABEB0408B11D96A64676A
          20721C1C561F5EFD8B553AB4B5E8C9FEBED68F68D7BE4100A62CAAF7AE5D9AAE
          D3A7C68417788A90C72BC3DC21C16A97C11188C47805623522BCDE006A1B3C68
          B3F8D0EB1411A3E771C7581DC68CD421274B059E88E2A344F98211D2B2615006
          50BABB47FA70D39D4BBD1100BD83004C5D5C5BB77689293F2D2B060EB78C63A7
          82D0A881EC343E3C9D4E1FF61EEC091BD569058CCBD7A270B41EA3F2B4D0EA95
          F084C84B2FD01F60E023290C9396264F914CE002D8B0D726ED29BDE38701DCF3
          446DCDB3F38D63468F8E83D727C1471BC5E939E8A8C8E8292B3BFEDA83B28336
          1051919CAA829F53A23FC8C14B2A098911BE3052AAA25C514655A28A1235451D
          C2EB7B6DE2F6976F5BEA755EDDF73D00C54B2E7CB2B02473E603D312E0F432A9
          51DE7D40974D8683727EE0A81DF12A1F562DCBC299D60839C35E0A11634C1D02
          7DF34284B4EA287FD864A48E154278F34327CADE5AB8A6ADF6D31DB4D4730380
          AA3F3F5094B978C99C6438A8E01CF93A882ECA7D723C174EC1DF8F3B28A13EBC
          B0C2844B96A8A7DC77F20C4B5511212FBB0E10496DBD32BA7B258CC955C0102B
          61E72192EA86C74A9BAB0F6C259B964100EE7EECE8F2C25BC76CFEFD13A97CAF
          8F0AD0808C581DA0D7704C0458BDC50629E0C38B4F67A2BE2B024088D6089E93
          1936B8FB655CED96E070B27B193A7A37FF160546667348D4CAF8E07302B079F5
          3B55156FBF4A369B0701B8E3E19D3F1F357E46D99655E9B1FD7E3EAC7B662418
          94D1416958FFAE1D3ADE8F975664A28982A7519290FD32DA3B44528904971B61
          D29AD238A4A72890964CDCD1D01A954C56D8F44A19074F78B16DEB5B872A0FAC
          592D43BE3408407AEEB4D145F376EF7F7569DA48438A0A76CA7BC5B9106CE40D
          479F46B307D61E17FEB4360B5D1E0E55B521B47749648C5294A140968191950B
          4744922229F050442C3609A654054CC33854D6F8B079FBC7A78FBCBBE4F9A0DF
          53390880217B52D2E45FBEF3C1F2B9B74CBF9D34DDEBA1705A4564A6F0A40A60
          CFA71ED435F661FBCB26589C1C421419664C4B46D5CA08017DB466B1CA68ED94
          C2F58329C390C461628180EC540E57DA03D8B8FB5CCBE11D8FFEC6DED578E0FA
          7E116EC753E76D7BE191B9F35EFBF58C18D22E7F8D6475ED120E7E3180F3971C
          78FB85740C50A392A94305A9C8B07C77D945CA3DD5004A492C01CA3546729F42
          0466A46411613C720F48585F6671ED7BFBB1D2968BC7B69049EF20009366AE29
          2C7E78E5E9274BE2F8D444817227A3FC8C88468B844E9B8826B31DAF3F9B8A98
          78159A2D22BE3C2742AFE390465EE6A4F348A5EF3822AE5AC95D6B542C0D76A7
          44259B0F3BB3F9A05B3CFCB78D65151FBDB2927EB60F02C00B2AFE89D2BA8A59
          53D28B66DCA60D7B74B64E24AD53F8DA441C3F63C7B239091849079381800449
          E4101FC345FA050D06D84B1266BC69A134B453B3627B24D033F38B05688990E5
          FFF6E3C8C9FAD637568C2DA16A5FCB5EBB06808D39CFEC5F3661D2DD1B9FFB45
          BC9ACE7CA03E82FAAB124ED78A3873B10F53C6A93163725CB8C633D6CB64D449
          7CB9D226A1B943461F5D6B54404E06872C225F06A981C959C147F66AE916F18F
          6FFCE2D6D5F73FDE58F3152BC99E4100D287DF6A9AFDD47B7B664E1D5E543C56
          0D0585D24CDA3E768E116B008931412C999D089976AB6E1071F2820415913087
          E4379CD430223352BEB968C3675C61E5DAE991302C21C2AB0A72E6A343FFFCAA
          6CC3A2E55EB7A36610008552A3983EFF0F0BA63CF8E4EEBC7481BCE4D14915B1
          A93D24F6D93B5D71FAD884957393383AA0A2DBC18A9084A4383E5CB0BE2DBB6C
          38A993B676C9B8D0422DBC4F463CF59559930524C572B01398B2136EEFE1F74B
          379497AD5B478FFB6E3C150B739FD9B5D13862DCFD1D2D55CEEEB6BAB68BA70E
          9FEFED31B7FF6A6DF52B4FCFC9CC2EC8558799CD3C12C9CB5E171577AA1D2D24
          BF0ED23EEB8AC971A4862C0E238C8AF0F5F5A3869475B261C0B36DCD9C85D5A7
          CACBBF772C576AF4698929C6710E6B9B100AF858E3E8668E2D585BF3C67D77E5
          3C3AFF9E184E247955378A387B990C52E98DA1AE39C2C823836A0753C6B7B9BF
          7E84E548C4BC6021B00E1E9F7DB0E9FD3D6F3CBFE6BFFD31E1A333F4EDC29447
          4A67DE76CFA2DD2F2D484989D1F1545C44CA339097C987D572A3B140883840D1
          E8A39474D339A3D309D9E1EAF7F73AAC2E9BA5BE67F7BA65BBAC96E68337F5CF
          880D63EEC4F4994BDE2D9B373D7B6AD158CDB59C3386CB5132B194585981A294
          74D0C1CB451976F7F707AC1D665B434D6553EDD9A34DD6AB0DF5B6AEB6D67E77
          1F2361F34D0360E3AE59AB4AEE9FBFE6E3D99334429E918E5F54F7FBA8E0D8C8
          602B11D3EA1425ABCDE67639BA5CE6BACAE62EF325F385AFCBAB1DDD6D749208
          B7617B74B283A99F056B48006212D2744FAD3F75C4989E7A678E8187873CECA3
          7EE1743A3CE6CB67CD2D75A7DB1AAB2BEA5CBD5D665B8799FEA6C9567A8D4D77
          D46808371ECB8702808DCCDC09E31F59BE7D8328856E69AC39DE547FFEB3F3E6
          CB671A89B066FAD9768341F17FED3764008252AD4AC9C82B1043810247778B5D
          0C05D901C311351ABC19A3D78FFF009F9865AFCE5918020000000049454E44AE
          426082}
        Name = 'PngImage1'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000008DC4944415478DAC5977D7014671DC7BFCFEE
          EDDDDE4BDE4392F28E1079A924070909105EE44519305A2AC3A868D1696C4BC7
          290A0E3A5219685A8796861A79512A15155A5E626890400225C314AD7034D02B
          E5359522C1F29604C8CBBDEDEEEDAEBF67F78EC4D63F19D9B9DF3DBB93CB7D3F
          BFD7E73986877CB1870EE02ADCB1302D3D7DB55B76BA19330D4164A01798609B
          40F742E29ED1BD985899F546DF60F29709C3A095CC30132B7FA60FC425373488
          405C078B46E96FA6108D19B13B977755EAD7B7D7B0CCB2BAE6AFCE9A549C939D
          01D125C1E102BC3E062FADB253832C33B8C8647A7625CC49E6906C302E148F03
          AA625B2C062864515D405821678241C89F5EC51DDF40B40D1A0F551371B7BD0B
          F5BBD634855AAABFC7F2BE5C7F66DE9CA905EECC340CEF6A42A1D68096AC0508
          0F2C414A86043789C82E13B29B20640220E32B8710C9315D2761D516E5E2B128
          190185BB556457AFC4B0D63A98B9A970877A70419889A35FAB428FE943FD9F7E
          7EB2FD6CD5932C6FFABEE0EC79F3FCC33A8F61DEA3373178B000B9E9259C8F15
          E07CFE8F20174C832C99E4B969092741B8491283A67171D316E62B4184285F29
          AFACC184F09B48AF5A86F77AA621EB4E0D22956FE29A32038DF3B7E0D0F65581
          3B67D755B09C998DC16F940CF23F5E5F8AC1CB7F0D61F01064D57C072D237E80
          16D71444E144E684A9F065A6C2E534AC942423E1741200791F53FA00680222AD
          6D18B36A3AC6D63C07C790B9B8D8D282B52F1EC673DFBD828CAA53589FBF07BB
          9BDF09747EF02201CC68089697E5FBCB3E5A83FE970F224B8EA1A3F831182B76
          23D50B9C7BEF02E0F120EF0B43E1940CBB0E785D38ED1AD0A9063884A224004C
          01FA3F4EE08B353F4164C3760C4FBD8DC5DFAEC69C2971942F7B0A3D4F57626F
          6C3136DFBC1BE83EBDA682E54EAF0BCE9839DB3FE72B3EA49DDE89D091037864
          E5ABC849BB0E51CAC5A5B614B4854CE4E46591C786957B89C42507B3BAC13479
          119A561D58454800F15367F0A53F2F827BFB6AE4A564E0D5CA6DB8D725E3D9D5
          C5C0D28DD8AAFC187FB8D116E8FE80034CDB179C327992FF896FF643711143C7
          3D20556BC3B5378A9032BD1AE79429E8D12564E76452CE09C0697780C361B723
          6F43EA30AB163880420518E9523172C52C94BE2C419AF92DDC0C0DC35FF71C46
          314E039BAE61FDA49D387CA22170EFC35F510AA6EE0B4E9F3AD13F20CF87D9A5
          2E4C2C70A0EDDF5751B3FE1988052BE0CC2D4466BF0C0ABD409E9B9406660124
          E701E95B9D1027008D47824781DAC3D17800136A2BD07FD900045CDF47995483
          5BEBCE63876F092ECC781E7FABA90CDC395755C1FA4DAD0B4E2B2BF1FBBC5EB8
          BD3286E4C410EAE980EECA466ABA0F3E0F2351D30EBB649B83875FE88D8041D3
          4723CFF5B8DD929A6A22CC1C908FBE834107AB916E5E43A79286E611E5F8B8F4
          873054278ED456063A2FBC56C1B2A7D40527978EF7A7A57AE0F17929EF6EF8BC
          06BC1E8184E396200FBB0DC0AC67DEFF160092001481C440D21200AAC6101544
          443B35E8B7AEA38779A1485950BB7AD0DD13C3B103EB6C80ACB2B783138A0A08
          C04BC5EE456E4A377D70003CB266553A17E6ED2625F26E4F40668F675BDF02B0
          2034D386E0F5C05342EDA9C445283415B5281F4E241E0AA12762E0784355A0EB
          527505CB9CBC37E82F1CED777BFB61CC2317F1D3918B71E8F24ABC2F3F059F1B
          F039751237EF03880EBBFDF81E91DCCA920046A2187957F048A85661DA1D128D
          C6110A47C8A204A0A3B9E937816E0E9031B1363872F4687F5C188A65D35661D1
          A0D710BBE5C5FEC80BB8C58A714F2CA210C8703A4C4B5C1459EFE684CF00502D
          C435DC8F82A6D9E28A6258C29148EC3EC099639B023D1F6FA860A9A5B5C151F9
          83FDF31F3D82672756213D1EA2B8D357CB2ABA3A53B0F65C13C47E259044CD8A
          80E5BD60EF86EC7E04CCDE34C47B01784A14D520EF158449381C8DD14A10511D
          178FBF1E08FD73630513FC07832F3D76C8FF8B051B6988BBF8064DA38EBED9A7
          E2D4B93178FD62233273B2A8EDE21401D607A0774F37CD3E7540E1D713102A89
          C762244E1B44848423F7010C7C727A5B2072795305938BF606C70FD7FD2FCF58
          8FA9C51F0229347F1DA490AEE0FD5385D87CB21119592E3844D3161779FED9E7
          014CF37E1D589E6B3A89AB1640940344141B80D630017C7A7647207A657305F3
          16ED0A3A5307FAFB7B54D43EBE04A3CA6F036E3EEE34846E0858BE6D3FB4F412
          B81DD4920E1142B206FE5704743E0F740A7F9C42AFDA0054891C82E73F6A01A8
          88504DB45DDA1350AEFEB682B9C7ED0C7ABC297ED591874D13D762F19A3A7C72
          7104B6D62E842965E06A77199D50F2E1B2BA40B2218820792AE2E226BDE944A0
          7371AA4295BC570940B1C4B9913887E100540F11DAB4BAAFD605D4D6DF510AC6
          BD15141D2EBF2E6660F1A8A358F2F5B7F0FCDBCB70393A0FE9694EA479E396B8
          93068248A971900994073B0DCC1237ADF0EBB42718E43D8788138066999D06D5
          025068CB0CF348D04949BD7D20A0B56EB101C0243FE387088F84142106551E80
          F4549144C9680C3A9D0E9A03745CE3335E14EC08D020480E229377011D04750E
          405188530A546A034549A44249A483D742548501097A7BA30D208EDE1DD4E32E
          3F3F37F269230A6EA4CB7402A27DD7ED15E0F6F1BD200140DE8B04212652902C
          049387DFB0D3C0C5394432024A9F287010939F58051946C7A140FC1A010C5BF8
          FB60C19C76BF18D630A035846BB92EC4325C70916FFF0A8C40C7953C3A031854
          7C09CF49D49A8260BD93C84A43B2130C7B2E5034784AACD4C4EDF4F05459FF49
          00D11BF5019517E133C105C1CCC22EFFF00B0A9ED8D38657FA87D1313B17D10C
          0577CF8C43E75F5E00A321D4A7E63F77D7DB107DEED87F3F0B7D22264A1E9A03
          7F0CB4BCFBCB0A363738EAA3300B8D9D706339721A06C293BF1CCD23194E78BB
          90151E8B092D47D1BBED3C988BD7D599BF6F3DD9B4F3E927D9A0FD2901DD192D
          1DD0FE330CBF94862DB33660D1DD7B381C896068782ECADA1B6032E3010230AB
          9B2E1DDF783250BF94BAA05C2887CC96C6E27A6A36E98C737B70BC274A3F2C18
          B2C3F391A296C060EA03F33E79DD6DAD7FB7EB56F31BC94D352761FFAF8B6BD2
          0901371EFE8FD3870DF01FD52F8A958DBE7E050000000049454E44AE426082}
        Name = 'PngImage2'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000009174944415478DAB557795454D719FFBD3733
          6CC33E808AA8885B55DCAA496B12455C016D8E4B3DD5EA49E2BEF4686C2439D2
          9C5853A3A21E77E2860B6A5C489598564D8CB8C4359888D66A51A44111111966
          58665FDEBBFDEE7BA34830917FFA0E973BF3CD9DFBFDEEF7FDBEDF774740339F
          2883417C3733AF9B37B0C7A26AA36B60BF5722A399CC644962E043960199660F
          0DB24392553B1F1E0F133C5E38BEDA939E5E7866E77EDACEFD745FA1B900CE5F
          FA6EB651FBEBF977EF5ABAC68503230645280E19533FE733BD83F2A74ECFFEDD
          ABF0E2E8F9C7F5FFD8F2CE860745E7D792B1B6D900962E5FD53523E3FD0FAB6B
          E5497B4EDB11E0B463C8ABC1E8DE29A8B9D8F17DB11BABB69E2A3991FDF60ABB
          D574884CF66601983D775ECF156B37EE0DD0B0C4E2328F26F79C05ED82658C1A
          1486D818BF973AE6019029155F5C76E1D3AC4DDF9ECBFDE013329DE1E65F04D0
          B3572FCDBF6EDC9853EFC292CA7A18DA50C84F5DB5E2EC0F36F44BD0202D291C
          11A1DA669DDEE6949193EFC08E75E9FB6F9CD9BA924CFF7EFE73E105CEFD8F7E
          796C6E7854EBA566A7A03751B0BAC5007FCFAFC5B5DB7624F5F447EAC0700407
          699A05A0C62A61F74902B07A665651C1C10D642AF95900BD7BF50EBD5C783DDB
          E366E39E58058DD9066235F04A5B60E3C16A94943931AC5F100108833EB07900
          8CB512B61FB761F7AA492BFF7BF3D8A7647AF84200DDBAF78C3AF1F5D72BDAC5
          B59C2EC902BC94253E34E42780C6475B2A515AE6C298E450A40C086D3600533D
          076047CEFA996B8AAF1EDAF04200B3DE5D12943AFDAF79A2248DB0583C70D8BD
          B058BCB0DB25D868B6D2FC5DA10D6D5B68F0FBE1E14879231461212FE7002F47
          AB43C6B66336E46C5AB8FDF6C5EC4C32973601B03EB7FA4D3BB45F0608325C2E
          196E1A4E1A1E37BD774A5C48949A8F3168D1AE950E6F0E0E474CA4AE59003C5E
          86ECE356ECDABC3CB7F054E6623217370170F88269F2FD27DA7D7DDA007EA2CF
          28FAFE090D79922825FA40015D3B0422D05F7CA973A6ECC070F8BC1DEBB2F65D
          BC7264DE02C6BCD79A00387AB9FCB76EBF9657867717111AF01271E0BB0A3FBF
          82837478D4C13964D00305B79CF878E3B9BB570E4F5D60AF7F7CD2B74B0380D5
          DB0E0786754E2B4FE9E11FD9C6F0CB27FBE9299F62E18E6DA4F0B554B61EDE17
          980A202604705A3D989B79DB783177CA6273C58D5D78512F587FA2E65252F790
          D77AB755D95D6F67B8705342CB084169348F4C32125A69505A2921324484C3C9
          90102BA0639C46716EB2A9A7E6AF99E00340251C42116DA19731737999F3E467
          B3D63CBEF70D27A2B50980A5074A33133BB7FE60745F9D62ABB1309C28F0E266
          89AC94A2214C404535438B70011607534E3E7E900E5DDA8930D1764EAFBA9B4C
          4EA98AE1F5AA7AABA3802644012BF79A71F8D0EE13374EA6CF2073451300D316
          7F3EFE3749A372A60D0A081245D5CC75BCAA5675161224A0A69E21542FC0E551
          BF13A66730DA44B8259FEEB386D033598D067F3A108063E72DD8BCEF52D1B77B
          53C793A908BE7EF00C40E7DE4312A72CCE3B32757070E7E8509507DC310FBF28
          FA1C50296A3482F2C6E666B0B8090C9599EC2326F57C5F03E2207873566D6D23
          E9C88F1CF838FB91E358D6ABE33CCE9AB3B4CCD9084087C481D193167D9E3BFE
          0D4372B7365AE5144E727230DF8BF6ADD49395563274A19C737179580DB48B15
          5156A91E33365AC4FD473222C2D4DC5B898C9DA97145478A080F04FC2537166F
          35B3E33993DF37DE3FBD83BE52D708405068B430317DEFEA7123072F4CE9A343
          BD5350007CF3BD17A515AA9356511AC5A11F75620345E951151192B8C14F6DAA
          E542A5A134C9D092486A453572835FF7539CF48891B16CB709FBB397E594166E
          5842A6078D00F067F4AC4D53C74C98B1737C7F1D3C4C54CA8951ADD95D6AC9F9
          D1C65697BA564BC4E476EE84BFD6D370F8AA8123E290391145ADA044AF7F3CC3
          8E23B558BB69D7D9E2F3E90BE8E39B4D00A4BDB3AAEFD0317FFA6152923F02A9
          0339A85A25F2CCF3A8A58DDC24C93C35FC844E778326E9E97DEB70354DD7CB15
          F953882A28745149DB9754F6EA752BFEFCC9E9E29273B3DF1B95FADA89BCBC3C
          D60840D2D88CA8117F58543E3939C83F324C0B277DF1DA5D0905B725B46B2950
          6B65707BD57C973F91A1A37610419A60248D888B11C0F959F29821325C84B956
          4600E5BEC7AF74D0F909E84E3CAA24224EC928A8283E3BF3C3B4A1899FE5E57D
          E16DA2A91FED3557FD312938BA7DAC0E660785D9C6507C5F4251998C16060141
          94FFFF3C6068152D28604C750CAD6344541208CEFEA8087A6D9411162AA0CECA
          D09E842D3A46834E064AA1D783D1F30BCD77F2672E4B49EEB08500389A00C8D8
          652E9D90A48FEFD2C60F5594CF16C16AEE1D2EA6CC3CEC3F9A786A04A5D43808
          2E547CE6E9E16177BAB84608D00AA423564111A98EA40506AD17A9736ED415E5
          CF5C9532287E2301B03601B070BBF1F684A4906E8909FE305A4025C4A84583E4
          97DFEF54E2D57B55CD977D7CE036C1A7150E8A5A2CD57D5C884A4E17C96201F1
          3D9E6CD17E5E8C987EBDEECEB9596B5393E3D711004B1300E9DB8C0FDF1A1A1A
          D731CE0FD5E4A4E4A117A7AF4AE8D45A40650D890FD90C911A18CD6A69468689
          A83249744714143066E249BC8F2F01A4EA639234287768101B4A6BB51E0C9F76
          ADB6E4C2EC35A9C9091B9A0018F15696BECF8089D53346860418C2754A493989
          F90F1E4BB8739F513FE0F701557C62A86B72A9ADA2DCC7B62422D6C8A014837E
          40A18A38D02F4144759D8C40D20B27858257415D9503E3E75DAA7A58303773D4
          B0C4ED04C0D608C0B0B737F7793D7962E1ECDF51E2755AD43A1A1AB7477A5E66
          D592937C1D8FC7429254EDE7363E1B82D4B9C2C2F9038C4C042E16D4614EC657
          3F3EB93EEF6FA3470DCCA5327436023066FE3FDF1B362469CDF4343DB5545129
          438686DBCDB3D7CFFDF4623ED179DECE7CE03848EEC09FCA35CA5FC25F365561
          CFCE8DA78D4599CBC78E1D7B8E00C8CF00C427A6858D9A75E04054084B1B4077
          7FADA8361D99A96AC81ACD507E80CAEC2908E65B87867572C37AEEE41EDDA8F3
          F2ADB8953F2DCB5A75761B996E3552C2C8D81E117D06CF99EBB0D5F777383C3A
          E564B2DA92659F43D5A9BAB9D27ABDEC19405956D7484C6DB4926FAD62279BC8
          BC1273951B6B1E1CC8A51557F895A38914D3435C455B7E8FC0FFE7E137892734
          4CF0DD07FE07823AA95D791D0C380000000049454E44AE426082}
        Name = 'PngImage3'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000009374944415478DAAD570970545516BD7FEBEE
          DF4967E924241D92745812240464C2224CD09468592C22A040402DC4A9526A40
          A504AB6641AA046B8A651C287036C7A25418D019161181091030AC49D8228426
          1B591BD2DDE974773A9DDEFF32F7FDDF8983710487F9A957BFF3977BCE3BF7DC
          FBDEA7E0018E79130A594182E12B6695643FF9E898628A66A6715AEDE4BE70D4
          B26EF7FE0DBBCACF5DECF1077C0F12EBFB0775BF072EAC5BB974EAA8E14FCA34
          331168C644B18C11095040D300340B0151B29FB134966DFFFAD4FAE3D557DAF1
          15F9FF4660CF6B0BE6BCF8F3098781423086C1A771B03818560107490008F401
          B8BB2074DBD275A2F2D2F6B9D75CDBF0D5E0431398683631FB5F5FB4C39C96B2
          0270C22A38AB9E3D0E00EB6D80CE56806EFC1D0AE0BC4508521ACFA86ACF4C6B
          48BA8621A20F4560EED891F9875E5F780018BA5005E7104402D8FF5700974D25
          A2D10270789DC6DF9C4639AF6FF1FFE5BDC69EF73184EDA1089C7FB37471F188
          EC9D28B71E687C8C45808E2680B2BD003ABD9A0686F800AFB3AA1F08C92AAFF0
          EDA2CBB6B7AC41E1DC43111036AF3CC250EC6C152406567902A56F5267CD70AA
          2F0811E211A200FE1FA4E8E0F22BB6DFEF6EF36CC130FEFF89C017A54FC52F1A
          9767A5182A4901228E0F8750962398EFA06A448A550928C0FD0A906B9C7CBACB
          5FF5D4C986520C7507EE53153F48E0ECB2194B1F1F96F99912B83FFF9D6D00B7
          2EA9A920D73876B002B1EB023091F1876A96583CFE7FC17D2A621081F9A3B2B8
          030B4A3EA618E615151C83B368B69BD5683EBB4A860023117F4804DEC0A3F708
          9198128CEA854DD7AD3B7F5BD9B84EBE8F190711D852523876CD63A30FD02C9B
          A7988F4640112BAAB6524D450C4842C75B6FDB20CD6C027D92E13B9F30AA17EA
          BDC196E7BFBEB2AACEED3B8661A5072620AF7EEE45996276A2023AA5BCC88CBC
          2EB5EE356AA9915C0BA20C8E5B0DC09BB22039370BC522E9E2D4D4A0021109C2
          6F9DACD9FA516DDBEF7ECC8C8308486FCCA8C060258AFC0A011C0EABDA6C8821
          63752FFABCD0D7540FB2C10809E3C603ADD581083404FC610878038828C2E504
          A1616FBEB8AD68492E0D1A30077C21E1F3A595FFE8AAED6D08FB84C820029F3F
          5D90569A97D94E510CAF389D109044CCBD437DA0DF746838D96E05E96E2B4430
          B266E25488B03CF438BD10EC0D41D76389D0363B15BACDACE8D74B6149923411
          516003D1B0DCE3F2D7D557741EBBBABD6DA3BF21E2B987C0B9D963574CCB34FE
          09284A2D3592FF4830567AFF51F76474A3217D2E90BD1EF0279AC00EC910C8D4
          82E5CD6CE82AD041187D2344A260EFF54087DB0936AF1B049C0C8793C23FA1E6
          25EBFC6087F0CD008179D949FA83D3F3775134FB820244C746348CC6906365D7
          3F383525B8024BBD6EF07965A82BCE85FA65E9E0CA467F44A3582121B0D8DAA1
          F66E1B88D8C275A89A162711A7D181E4901D17E7B72E47D8530304B63C9A3171
          CD18D37E9A61CD03AB9EA204C93935E06E8514AE0112D6BEDBD6053EB71FEE4C
          4D844BEF98201A8DE010C0E9EB81F2FAEB1011A29037245301274AD0F84E9C4E
          2BBBCE046AAEADEE5885B0970608C80B462F9719F6438A41443AB6FA91E6C2C7
          DDDBE9C8198DE8F3FAC1D9E60067210F55ABD2A1374E06511014B9ABDBEA2082
          44C6678F40404C072A72C7D30D1A548FD768A5BAADB6C32DBBBBDF45D8BA0102
          D2DCBCF3144D170FCC92489D94A22E3C4409A5D3A91D4F1025B05A5A21C4031C
          DD9C01DE045066DF8D955176EB2AC8B40C2FBB4781AD480701B4692882034920
          38B021DA7F7155F3CEAE6ADF4684B52B043E1B671CB6D49C588FC01A8500290E
          1D464F1BAA2EB96CACC120011905F2D85DE0BED305B5F30D50F53C0F52280ABE
          60002EB4D48327EC83425722CC090F871353FBD00F2208A80C8771751CA6CE29
          39CFAC6CDCE6BEE5FF330279150215938CBF2E49E1372A33243293232D13207D
          E8A00E17C680F6865670A4C97078150FBD3A014449826BED4DD0894EE7B145FF
          E27A0ED44DA6E06E52082B4150CC67E0F5A0C37BBD3782CD277F69591F7046F6
          214A887A36854D3C342E712FC3B2B354B3C508E48F073024C5721FEBF148A2B3
          CBDD77EEC2CD3BB58B79DEB3C06026A6EBC332AD6AAD477E14A447F530DD9101
          678B70AB16465F60E9A5C61990401C2AC041CB97DDD5A7DEB1BC87CDF924A288
          D4861CAE78AD99DF47D3B4499D2D92D063528B9E88E53CB6DA91C5479242859B
          766D6B977C975F3A33650B13478DC406036DB82DEBEEF38256C38111F4C06935
          B82FC08A104448D6C7437A42B2927F1EEF576D6E3ED8F4957D6B7CAAAEB5E38A
          CB46F9276BD7F02CB58562385A311F494AD648808289B1EEF7DDBA7FB6A5B3B1
          64FB9EDF14BC3DB4A96845F6E56854D462775308C8D82B3408405220E16F5282
          C4BCA3D2B394DAD7E18AAAD77150F6C68D3F16CECC96343CC77D525AF12E152C
          82235A96994991D58410C0B281494F03A49A543562B9C7D54FFCD597A78F7E50
          5EB976D2C6DCA1597392CB049C616F3800EE3E1FE870A1223996B1E9F491CD0B
          EE43725333C0A83740BC96073D2AA06138B1BBC66719366148E6A78B2B3EB01C
          BFFB15F5B2119E793515DE9E9EC83C838C690578DAB358FFFAD8BACF29C66C74
          78EC8BFFF6CF4F6AACF61DE337649598E6247E4108F8102C826D97478588CC7E
          F4831BB7EAE694219082E0614CD148343421A065353227D2C1D37FB0941D7BFF
          DB8FFB1B11715DCA6B29B0E495645832E589693F13C74E911D7D215FB3CBEBBE
          D07AF7F6A5F6CEA6724B734D201AB5E0B33505EB32E60D9963D8470C48FA3B8B
          440900512084FD4040157291C055AC8C0939798A1284202DD0A1B2F5D7CBCBB7
          D6EEC138C771DCB31825E470F0C873A3735EF0E9938C373B9D9DEDAE9ED66E7F
          B019EFE186009C38C8E75768F8EAD409E90BE3AF10022C764CBD0EF3CBE9944E
          4788C4F33AF9F2B1E6266B822373E113D3E2CDC9192087E4E0A94D37CF9EDE71
          F3EF4258BA8071DA489E7E684F88DB1BC0FEAB7C580408207C6F63A93531CCF0
          8DC6FD4C263D231E7B6D6A5CA23243D2F3399109B71C745EAD585BFF116582DE
          E215F9A52372D233BFD96E39DF71CD4D80ABC8CCFB63DEF7DBF0BF1DBA61CC23
          F18F6B96A5CF4F78353FCF34241E5B368247AE7F683D7DE353EB91689F48B662
          5DF8199982FD25438A4AD818A01347CF8FEE887EC241DED5D306189335CB382B
          3D2BA1A0F9A8F396BBDE7F1EAF13AF3CDC97D14F388889B173411AA89B4F02EC
          8707FC4AFE3748D7B6BBA5C70B7A0000000049454E44AE426082}
        Name = 'PngImage4'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F00000A044944415478DAA557097454E515FEDE9B99
          CC642690909904885948C2164822419280422C02422DD5869C824BD5E2526B3D
          8875ABA7C75A39A8804BC1A5C5228A289A1409D0820B4114098B810422190859
          2699EC99219349669FB7F6BE378307EA56E53FE73FEF9DF7DEFFDFEF7EF77EF7
          FE8FC1658E8494B96353A6FE2E2DCE9257C83098ADD56A7283434D3B4FFEE757
          CFD36BFF0FAD677E8AD1F4196B931896FD599C65FA353A636A91244BA9F123B5
          57B00CC34A32039977D90F6F2BFE257D7A8EA670590074B14931E6B1D3D32D79
          2FE74A9250482B16C6E874B989091AFD15C93ACCC835226F821ED3728CD0D06E
          8F6FE8C339DBA0EFC87BB36F1338EF7EDA2278590016DDB5FB7E8365D67D5DF6
          E1EC58831C3733DF88A25C1372C71B9090A085A4D56228C8C01306262401157B
          5CD851D5E33DFCCEACDF8A4260DF0F85E13B012427256B77EDDE75E3C981FC1D
          EE61862999AA41FEE4188425166EF2C9394CAE09910DB42C31A501A68E05767C
          3C880F08C0C1B7662E27009FFC6400AF967F31EB9E25B3DFDED7284FECE99591
          368645AC890527445629462F1866947B7A9C4D0C54D778F0E6AE4EEF27FF9CB9
          5CE2FD3F0DC0CA1776A4DF7F67D9A1091664ECA91771B64D44468A1616330B2D
          ADD0B09149590F1D5D5965D2BAB1F1C069AB0FAFEDECF7D6BE9CBF720CF8737D
          82D4E09025DFFF0D203367BAE5C5CDBB5F5B5C9CB62C86BC7BFF7008EDBDC0A4
          CC182425B2AA21C5B85613597CE15E796E3101078E87F1EFCF7A7D73CA8BCE5C
          6F962C9F744B270E0C85B7EE0907ABE813E97B01644C2E30BCB5E76445511A6E
          0AF1A47123B0718F072E9F16574D31209918D068224659DA8A55D8D044AE9065
          7452A89A6D3E6876ACC3BDB13BA11125C81E1F7ABD2C7637072BDE7278D79FE2
          B9DA8B817C0D20F7CA02FD5F5EDDF5C8B557A63F6DD0313A0791966D069EDDEA
          02073D0AF38C18339A05DF6AA5A87A316AE62C3507583102A2CF29A2B95F03C3
          E7EFE0EAFE2D481F2503BE007D4B2920F0F00F05C563ADE1A667DABC0F1FE742
          5F8480D02500ACDDDC43B106EDEA4C33131712640C7B44586D61AC7FEF3C8A0A
          2C309B0DD0351DC275FE37604A1E898E2E03B4F9F3609E3B1F7E3E16355672AA
          A5160BDA5623237B24642F191F1CA43904701C10088211C2F8E82CD7B9C236BC
          625A69E9473B2B2B0515C0CA075714AF7BE995BD7E4EB674BA64D8BA39585B83
          703804C452228CCB8C87C6D18C691D1B316B712A64C2CDB9BD70B538D0194887
          7DCA5DF079794C3CB106738A59C861016CBF13E8ED2306021100C100C42087D5
          2782F51B9C9E1717949555D2083157E43F52B2F4CE4737654D8E9FA437C510BB
          226441C288580D4CB1ACCA221FF421E7E0E3B87AA119BAB81180284436A6C193
          870D753E0458130A4B46424F1929BBDD60AD8DAAD708299303EF0BCADBCF04FA
          EE6B1D7C2900795F5959D959022033F3EE6BDF3E7AB469C982D9091A259513E2
          344818C1209124E5F6C8B0DA01C3B1ED5816FB3E8C537300BD9E624B092213E5
          B2824080448624F2529B6C81ACD3018DCD609DE7C9735ECD0146E451DDE81D5E
          D930B8F35498DB44AB4ED3543D6016FDA169875E6F5CB265750A3310649564FE
          5A5EBE808CFA160961DB1914ED7B0093A79AA01B97A6DA05A3818A80E7C10AC4
          4838A47A8A30D5E420DD07E9CA852113031DDD7EBEEC607FF92981ABA0455F5C
          30AE6E33EBD663EB63E39256BCB7265DC3B13A15B4B2B7D25894E9F3CB68EA06
          066A6B9079F0055C93E3813E2D8584C4A8D2834832500170D158470C231456C1
          B85D7E71D51167DD2B0ECF7AB2778866EF257560CEED471F60F549CFBFFEE754
          63629201012E5AE9A2FAD04675DFD405D8FA65C454AEC38CC0A7C89A9200B5FC
          28C625496542451F0A45EE890586E4B7B1DAD9F658CBC03FFC90CB69415F84B6
          8B00645D75FFDCB4E90F6D7BEA9E949482DC38F8B98871E622106AE1A1DAD1E1
          6050D71C84EE58254AAD4FC19437895E68222C502EA8601416142041921D256B
          65ED60DFD3CDC3CF5A056E336D15FE46254CCE28195FB07873E5B28549F9372F
          8AC730B556B5BAC9110795DA2F2BE120E0E73A649CB18761AC7E1B37393622C6
          453A1F97410D4117312C449910A24C50E792280C4D3D9CFFE596D0EA728F7FAB
          1772FF2500CCA945238A6EDC545152947AC383CB46C12FB09112CB5E28B1D14A
          E71251676321D4EE4751603BC653EB453BC565C04500A8170A6284092509E92A
          2B2C1028560146A0EC03826F5B27F66E72071EEE12C5FE0BA150492EFCC58B4F
          CC9C77FB9A276E1F05539C4E7DC85C643C1092F1E94909217B2B0ADBD72067EE
          0435E964D23A7BAE29AA0631224DF25AA670B03C176582C222F26A628A9C888A
          1EE3F1271D8187AE2A2DADA13A20A900662C7AE6FABC39F7EC7BE4960464A5EA
          556798688B152519C7CF4AE8B60F604CCD065C7783091A7D0C643B49E3F36AB0
          C150844B89BC26A30295609D5E0B868BAA435184B2A1A2120258D167EA7CB437
          F8F4CC25A5E56A2554D68E1D7FADF1BADF6CB32DBE267ECCD27923A07442C5B8
          925F5F9E91607770B0543D8792393C8CE604C85488D877FF1561810E030CA940
          20430D42261A272EC1B4FA2D9824D9D56685B0A8322051673CE9D6067EDDC16C
          B28B7C2555C22F2B2FF40265DCF6D7963DD969898B57DD9DA8025072C0E996F1
          D95754F94F1FC042690BCCD326514232603FDA0FA6B9358250A90510A927C482
          7FE015B466FE1CE74F9C4666F94A4C717D89513A418D50AF30527E7260C4D12D
          3D3DCA71FD28CD814BBAE1EC256B974E2CBE63F39F6E358FC84E8951334449BC
          4356FAE4C48798DFB616E6E2C9D09C6E04D37096E4A155F52F933C9DC302FC4F
          BC8BACD252625946EF108323E778B86A8E60CAFE754877D97068CEF2C086E347
          B7D557EF7D96B6EEBA240995913AA1247BE1DDEF7C30AFD05C50564271260948
          E45D1B1D321A6C1CA4AAB791677F1F39EE06A8D54A3987D116FE308FAEE2DB90
          B6F67538BC1AF4106BEE0083214A0D91BE093BEDFE01EB21E7A7470E1CAFF96C
          D7C7A180771799F37CEB8968DE2D2FFCB178C1BD7FBB63BE111353752A44E583
          4058C6293B83DED32D48AC5C85F19D07902A38A8D0C8A81AB714AE07FF4E27CF
          78391CE68480F7BC67C8D9E1B63554B774DBACEDA70E7F581F0EFA7AA35EF7D0
          747DE7916C6C5661FAAD8FED3D3925DB64BE8B40C8D1D78A24793AA4B40FC8A8
          AEF323D0780A930FAEA726C4A369F9ABB25BC3BAED0D47DA1A6BAB6C3D6DD6A6
          416797DD33E8B4458D29B1560EA5213559BEEF4CA88C9B7EFFC6E3936694AD2A
          C98F35E48DD361D047127449E81A94886EAA2FC1E140C03FE8E9EEB0F676B5D6
          B5351DFBF8AB9EB6066ADAE88C1A3B1FED76C1FFADFBDF36BE0120396D6AFAB2
          955BDF1C9D9133DF10A3406648DE21BEAFADBEB3ABB9A6B3B1AEAAD133D86F1F
          E8B5358B02E7A0258E684C95F33F8F6F39F9FE2800CA48C92AC89C7EEDCD4FCA
          9268E9683AD6DE7EF6688BDFE36AA757CE8B0C06A2062F6B7CD79F91524246D3
          3447E3463F62A0D3251D907FE06FF7C78EFF027AF9EA5DAC4EC8B50000000049
          454E44AE426082}
        Name = 'PngImage5'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000008B84944415478DAB557097014C715FD33BBB3
          F72204025942C01A04652204089384CB9CC1402081D8284412774120A994CC15
          2A2E631C6C57CA95143298D8292AE0000976504931470C723862401841C0C410
          303A40073A909056BBABDD9D9D9D9DE9FCEE9E15C2961D52215DD5D53B3D3DFF
          BFFFFFFBFFF70AF098C71FFAF6DDFC642F581D89C694AB7EBD78B72FB8BF418B
          554400D4EECE0B8F53F9729B6BCEDA3149851929E020A110787DAA5E564F6E7C
          D44E8E9E0C87B75768B1563C46FE2F0016D89DD37E9699B267F2D8440F092900
          E1308012014114C11F15E1D475B97AF7BDC0AF3F96E57D3280FC1F01ACB43B85
          DD72883C8AF22992B5C7BAF4949353667BC6B84DBA00D128007A00621A80AEE3
          AA42A443819B7755FFDB95F28EC3E1E0EFBC44BFD72D0037803DBF57D292E953
          325E96434AC75FCA3E7FF3742078A29A68355F741F1D9966A9E7CF5393DF9CB7
          72CC32B75D44C568B98AE1EE08A29DF83B120382CFA28AA03415EE36ABE4D06D
          ED747E4B7B4E515151EB97006C722564672F99FCCEA84513927445859AB2AAF0
          A71F5EBD7EB0ACFCB76763CA512F107FD7F32F25F65ABF24F75B5B878C4A7641
          185D4FAD0FA3879BEFE36F04A22A0820066204DFE1AA23900B352432F196F759
          0470F121001BEDEE51F3178C3DF5CD95537B994D22DF340920101DEA4BCBC9E5
          43572AB75D2ACFBF128B9E974008FDC4E19ABB68E9C4C31953870A543941578B
          D4F50D8DDC031A862042F70D00B87A032AD97943BDF5CBFBFEF508E0E34E00C3
          0553BF2DDF18B47BEEB6BC5956978DC70E09C42CA21387ECED80B37B4BEB0B4B
          CB7F5F1789966C782663D78C8D33479968AC91700457F10E46CADB8ECF0A8B3D
          0B01058632E87AF033A5FD95FAC0FB15B1D83B08E01603B03E7BA16BCCD50BBB
          666C989DDB6B682A576C32A110834C023E6B319C088A6850FB8F6ABDB9CE1F1D
          F1A3F1369BD3C215A17BC9DD4610AB6B0DCBA37C3FCA5DAFC951B878475156DC
          68DF5BA1A9C5A8F62C4E850128C95BB62045A8FAE3F0D9236DE07202D8AC5CA9
          3FF0203E180626388A40745486FC10E8B9D41400B3094843134045158834FE94
          70F41C2523F50482AFBC1B515FFDCC5F76A023B41DA595E26CE9CC82C3794B17
          F76F2E7B3773A2C72CF64B05E2768340DD4E08F704253FE53F8685C51327F30E
          924C175004F2456C6DE30AD15A46BE78081088D7A7C02FCE782F1F0876EC4578
          4528A9F9A13A90FFC3857DF49263BFCACDE89D3B6EFA6007494E069D5A474341
          15D063140C0210319520A633423165187BCE768DA51930B26986E51AC841050A
          2F07EEE7D7B4EEE800720C855DC3A97557887A8E14A5399B0626BE3EE599FEFD
          53C60E33B1D78291FA44E021A040540304E505753755AE2A7C558C15ADD7F0DC
          7B177C2D5BAADBDEAFD562FB50CA4D1AF7AE99F7C53A601B6632CFCC4E74E7AF
          9C39785ADAD31E74AF6484C098D472BA52AB69A6502FB090708B01B9C181A970
          BB2E4C969F6B2A3EAF2A07F08B932828F8C5BAD35D29A641EF9D6B77BEB46868
          62CE77E63ED5C79CE0E6CAA8170855488C32AB716F3072460DC51A673D72E4E0
          455FEBA2DB2DEB802BBFD75D19FFCA5E807627CFB038F2768E766E7B322B0D20
          2D8D2BA4AE8F67846A8088F381AE0C88C6CAEF954A59D9F04FEF1B9762911DE8
          9FF6FF0A001D3FB6B9E76F9A9EFAC12001BFB53900062208AB852BD58801C208
          453C240C00660BAE2272ED468DAA96D4468F15B4055E6CD4B58AAE04FC5A0099
          8279C096619EBDDF5F3672AAD4DACA729C8DA1E9DC5ACDE042DC0BF439C6EB04
          C13A21AADC2B1AEE7BFD1AFCB9522F3DE8535E3B1F954F4097A6D62D80FE8268
          DB9E39E483A96B67CC4A709B81F802203661EAB6341B14D1380FE2A1E8F484C6
          1B4FDC232C53A26C8D2239AFB648915D8DFAAB47C3E1FDAD446FE816C000D164
          5E6377FF34E7B5EC82014F7B4CACB3D186D2D000627915174C0DA06559D73BB3
          82D6791A1656A4348317B1079593A52502F9BC5D0A17B5588E6EF5F9D7A020DF
          9700EC4D4A5E3662F18482AC9CF1899A8CE51650493004E4F809EC74615E9858
          3A1A006856E80404160AEA76FD4176B0347D98230815CADA9CEAF8EA106DC717
          1E023049307B5EF9DEB8D2092F3CDB4FB24A7C13AD20E73E01F156252BB9BC22
          A2181426683C235445038BC9C8904E4EC4B3C4F088CA81CA78613AD0E46C5CD5
          1C5C8D004E75029827D93C4B333CFB66172C9A64B19AD961DA07C8D9F3205EBD
          862540342C262C0422653A7E7DBA3C1A2AAC09572E4E93D247A71297C3C441B3
          3E10AF9A942BC8190DCF1737B9BC9B5B228595BC1DDF640076E6E659DCE7CFBC
          357DE37757A466792496629204A4A60EC4A223180662F404E0E9079C80756D3A
          BC702578EAA81C2C9C64B53FB1A68F75D5DC81B13487442D368A95C62DA76CBB
          13B4C1EA1AE1C86945FE13422A41411D4CEAF1BC252B063A1BF60C9B351234BB
          83B559D2780FC443C740A0F73AA0B7239D53D628C9B5ED10DB7653B9BED31728
          C0DD3338EFF7134D990B5D8EAD73FB08E3B27A467A2688C8218D2BAF0A59626F
          D44B97F704593BA67781A6CE2C38BE64D9BAA1EAF58241E3D341EF9B0CC4E900
          B1F01008F79A8D76DC257351B98AA1D8718DD4FDA625B0AF85E80770F736753C
          4E33C21F3CC86C9EBE3CC1BE6A4282367C548FB039AC89B0A3DE51F516FE4969
          27E43D3C57132F480CC0CB0B7392FCC7FFBA3D67449F79A3673CE592223208E7
          2E0058AC0F34D3800B3A20DFE078AD39B0A62EB0B359D78EE09B4F0DE55D07FD
          306598C93239CB6A991F46D027E5F0C920D219F7FFC5DDD9A5103DF7FCF3C287
          C5C59E69367BCEC68CE417C70EB1B81C0DB5FC5624889D96D3EF3E69B6C89B6B
          A37FFB7B24F2366E5CC2E987EE07956DA74080DDF6592FA0952CF275A5D8966E
          324F7B2EC1BD76C1136442BA43B6F79434463F0AB93668D1575740C90925BC1F
          3889BE4AF9238FEE4AB1152F648346582CD9F37AD8E6CFE91DCB1AEC8C405BD4
          44DE6DB4DD79DD1B28C0CEF6119EBB03DDFC51791C00E283BAAFEFB725DB0FD2
          25F3E4364D8F9E53E4525A13819328F6481AFE0700F1F7347E49387BE0F4E1A4
          4D4485C734FE0D1A6DF79E55D65F7D0000000049454E44AE426082}
        Name = 'PngImage6'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F00000A394944415478DABD57099014D519FEFA9E9E
          FB5876F67217966577B9C2A15C4640044105148F188F9441A932D1A850018C4A
          0941349220224AC4038B286000356861D4A4340A88AE9C018195E5D87BD96B66
          77CE9D99BEF277CF82A226952A495ED5AB9EEE79FDBEEFFFDFF71FCDE0078C41
          451293EFE506DD3DB54F704889A33F27F0E59C2C0EE3042EB8F5FDFAE7966C6D
          DB9A568CE87FDA83F921049EBAA360E4AD33FBFF592CC8CFB1E578BD9CDDC6F0
          4E3BC340C7E12D1FD5CE5B55BD60D7F1E43BB454FB9F10D83CB768E9F58FDCB2
          580C7800250D1884A39B583AD29D5DF874D36707A72CAA9E450F1A691A178CC0
          4F2FF5B0332F76958C1AE07CB6F467D7CCE0259E6C540942B7C04D2C555350BD
          6D5F78E1EAA3F78DAF14F55B27F419BCAB3A533BFB8F0D9B6841E6BF22307988
          D3661846E13DD372FA0CE96B1FC0F15C252F8B178B4E5B99E477F797026E384B
          F3095C81964AD3EC81124D424D6AC8440DBAA7D7ED6519315069B0EE12BD79E7
          CAD0B039EFCE340C1CA5EDD5EF1078E6CE024951F472E8C6F059E37C43218AA5
          B2CF5926785D39728EA70FEFB68B9CDB064EE4C190CB9558123D6D9D50630A74
          4506630B42F094D22C06EF2900233811497B231A048585CE24AB56D8C6DFF5CA
          1D4D61ED03824B5A047E332BF78ABBA7E7CF62256994E8B1971250AEE87180F7
          7920B824CB9D5A3A032D1A85164F23154E41CFB030180F583907527010245F21
          046F1E184ECC1E83AE58EFE99A81488C4BA4552EC5B1ACA19DD8E6BAFB81E5CB
          B61F48BE480B3A2D02F51B47ED0A8CFDD165A2D7099667C0B1F49466BAB31B89
          C63350E3B4A14156BB0A217A8B88580138871FACE482C1CA10445AAC1B5960F2
          2D2806C0F1D64F2D1945E78913E978F3494DAEB8226D4BB7C90B7F75FFBAF53B
          932B08A5C1227072E3E80325532F19C10BF4A2A15A5A551309B4EF8BC03B7C1A
          A4BC1202B3A323EA84429647E20EF4641CD00C3742111D430B77A230CF4E462B
          50E21122DE8C74579B7535683FD699AFE981414931589111938DF6C7E7CE7D7B
          D57BDD4B09FBB845E0D88BC3FFDA7FFAB06B4453C996153A9D6D1CDD0D1EE44C
          BC098CA1E0784B1F1CADAFC4B07E121CB20489AC966D0C8ED529E86A7A15E34A
          1368DBFB31192ED071E4C2E6EF035B5E191DA187A241D03A5BBA126484CA1B49
          61CD82793B96BED1BE88B00F5B04BE5C3364E380A995B74B2E211BC744405755
          741E6711187F1D9A2205D8553F06AEE8494C1A37103DAA8468524732459E1638
          9C3CB016578F268DC42224CC0C521DCD8885DBD1EDF421A2690884C390785995
          475E1B1345965FFBE043BB176F6933091CB008EC5D3970C5E0C97D17C801B957
          403A094C47C7D134FC97CDC4EEBA09087505C06522D0E532A4159EAC37E075B3
          E8216DB7EC5A8A1B2B8E20DA1DC1E9700855E938425E014689179CDF0ED4EB98
          513CA9A73C58916091E4B72DFB6DF5DC97EAE6F728C6E71681771EEA77C7C4E9
          C5EB3C4576C1CA6226098E41C7B1143C63AFC2F1D05888CECB49700CE20933CD
          90B2E34073BB86D62E01DA91EB112A3A82BA5C1EB6221F2E2A0E22E0A628A208
          CF282AC2F118761FFCCA988211C97B868E57DF7A6CE5B1F9EB1B1E4EABD86111
          9833C93F65F982B22D39035D7E687A36A37140F89402FBB0CBD1A25C82F6CC74
          0215D1D4A693DB19B85D0CA244A2B595C5DE9A1F439F91403018809D17914AA7
          09348E7032867826451AD0C00B2CFC6D1E7555E5CCF4A6475FDE451A30455865
          119850E918FCDAA2D2B74AC6BA2AA0F47A803510AE63601F3116C7BAA7A2539F
          0E9E67AC249BE851D1DD15457BDD29302DFBF125BF02A12B9D704A126ADA9B29
          5ABA2190181DA20491AE36539892007FC8A53E59727966C3A31BFEB1ECCD8EC5
          B4D5418BC0E832BBFFE5FB4BB60C9DE298C2F46AC024D0DD6840AC1C89AAF06C
          B4AA131125D058470D64753FF2BCAD2866AA114CB5E2E5741B76966B90051EA7
          3BCF90E319488268818B3C0799232212075FA75D793278B1BE72C1D66D6BFEDE
          FDE4B92828F40BCCEABB8A9E9A79A3E3D7A2DDC85633C64094DCCBF71B8E3AFD
          521C3C94C245FE6AF42D545158E002955DC46B5AA0D7B66279B811EF1627E192
          44841371F02C0F91C8C8BD04248B80005F3B672C610A99B9F33F7E66FBC1D8F3
          847DE25C2D78ECE6FCDBE7CDF16C74E5AAD9CACD6AE83E4356940C875CE086AA
          EA1028E4AC14691655CA76B1D3ADD09BC2F85DA81E5BF322F0507ED0C87B22A5
          6391D69A040456246FF07404223C67743CD429AB937EF1C5C2A62EF50DDAA5F9
          1C81EB46B97D6BE7E53704CB7A9CAC79D2AC8E70B31BF6CAC1B079E56CA532BE
          51CE295FC71A42442082651D0D58EF6B87C721C1273BE928A4ACE5BC79257053
          038280545D0C8143D1D88B2B1A162184D7C9D0D079D5B0FAF9013B4A87242788
          227981F240A8C5077B7939648F985DA6F7AE36278564B4BE1B3813C7E3ED4D78
          C9D506974344813F000789916705C82279C02442BF6DE40533B4BA923D46DD17
          ED75C7B79FD99CDC97791A2D089D23B0EEDEE27B6EBA4A7FC69393304B1ADA9B
          0AE01B520041622CB71B2C55402A3A6A4AA35AA121D51283A03398D3588BBFB9
          A2703A45941605E1B05181E2B31A3009C8BD9EE0398EF282821C8F1BB5C73BF5
          CDF7553DA1EFD79F3D47E0EA11EE312F3C90B3A5B8BCA3C4CCC81D6DC5F00FF4
          C12A52C816BC6813351C54DD4D4D1CA45EE0B378126B950EE86E03B2434045FF
          22B8EC722F70AF06C813226BDE9BDA10AC4CB6F50F553535AB5B9743C107E708
          140504E9D939456B674C0DDD69467C57B42F72FA9BF9CCB0B4678E74DC405D5D
          06B3BF6A44959E0447054996582BD1048B3C282BCD835DCC6AC0F60D0D98046C
          A40DBB2CE2CD357B1AF73D51FB2744B181B6AC3DAF237AE486BC590FDEC66CE3
          A51E64983CF80AD4AF3B3736DB5676B57078E948545BD2DD0AD1CD7305A55EF8
          28E707022E3A77D10A41912CB734C072590244C461B3A1A9A14B7FE1DA0F37E8
          A78CD769373315A7BFDD13B28757F7FB24D7A78DF71419B039A8CAA92C94148F
          B61631597D520FBDB7277EF8C343D1FD2783199FE31ADB4FC6DCD02FCF46AE15
          B92CA04C1EE0CF6AA0F7DE241009F7A8EBE7EFD8D3F99798D98CECA2797E149C
          1DF74ECBB973E10DFEE78A06743852093B9A9BA5C4EE2399531B3EE9DE7BA225
          75AC39ACFED38A6116096608AE2AFCB9F7E9915794B8DC74F6FC59026CAF0608
          D84659D141896BD38ADD8DFB7F5FFB0AB9FEB5DE6E48FB5E02657962E0C1EB73
          9728AA31BAAA2655FBCE9EAE4FA33DFA69FAEB646F1F17C5D71F1A3C0A31D577
          A3FD89C9B3070DCFCD7193D514F7A4789B4584879DB2E0BECF6B7B36DFFCF9F3
          64F35BF4CE9E6FBCFFFD6DB947668369D51890520CFADAA0680528E8D1D3DBF4
          9F3F4887F0614CF0979E1726DF34A8A2A43840A584B512918DBAE7707B427DE5
          818F77776C8F3D4DAB3FA5193EFFF50B3358B8305CB8925B7CCBC3E3A65794E7
          F332B99E6558ACBAFFFD430DAF76AEA390DB4AEBDABFCBFFC20DF2374A5D13A5
          7963670FB879DA8C6181DD1FD524B6DDB67735E2781BD916EC3BDF881792C0D9
          E1821B43A511FC5D993A2D6CD41BDBE8D921F47E88FC3F089883521EFAD074D0
          6CA519FB770BFF0501272E8E310F8D0F0000000049454E44AE426082}
        Name = 'PngImage7'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000007D74944415478DABD970B5413571A80FFC924
          90F010511410620454E455B052CB6BED03AB72B45AA9D6E5544ED1EE62AD2D55
          77B5C7BA96AEAEB5C51E6ABB546585F555AABCEC2AA25569D55ADD852A0104E1
          20E52D093104120890C7CCDD7F32614DDD0A6CF1EC3DE767983BFF9FFBCDFFBA
          73291861F41F96A5D3EEE6156BDFD7AECEB9D9578A5386916CFE97410DF7705D
          94B3EB177BDCEFD2FEE289A7D3BB8B933EEBD8DC6320F5FF3780922DDE5B6337
          CEFA18448E60541B8DB7CE3496FCED5CE7FECE5E53EF89DFBB7935284CEAF05D
          1D5750D5F4D801AE6CF4F48B88939DB47FDA3F1C883D10420365D012A34AA5A5
          A0C72CB453B874FC93A9F35EAB8C47F52614E6B1002C0E9438BE153B7EF6F34B
          7C0E8AE60406DDE98C8266CD5C60892B48E86A7866E67110810254B79AFA92B7
          290B4ECBFBF7A1590D8A794C008DFF3A23B9FCF99A671396BAAE11F94D8CA27D
          6679B56A9F80F2F664880E710467470AE4775960FB3221C6231776A4545D4C2B
          EEFED2C840119AF78C3904E696A2259432F19440E625024A06066A26145725C1
          E279A12012F23A02D42EBAA604CDF9A486A43D1776E1D46594B65FBBF8CF007A
          EBCE863335AF9F74899CE207B437749B83A0B439191645F90083D1655153807A
          AD9D2C7CB8F74445D6A7ABD7E36D398AF1B100E4E6E5D3699B12661FDC3A2D63
          4EFCF4A77A287F4159CB5BB0206A3A98CC56458A970BA506D3AEBFECDD1DB360
          CD78F7C9E37DD45DBAD6B339DB0BF53D1D7DCBD7E7FB1B06FBCC05194BCB341D
          956D2C63624605601DC284B9CECB0EED0BDE2FF2F39D7CAEEA4D58F44C14D0F8
          EA041FB22C1AA085564F20E7427FFF8B3162F1382781A0DF40A0F87ABFC26012
          0CCE9A612F1D3411E6FA8DD6B2C2831B525BEABEB9CA998E16009EF7174B4FED
          F52970899C34B7A2350206241F43F84CCC1186D7E620442280EF2B1998E246C1
          944902CB1C07714DCE4064180DAA3E0AF483D8472E2B9A3FDB1ABE4CAFEBE0AA
          841915C0E260494061867BA1BDBF4380A95708053527CC0B5F08148A45FC6B70
          0604DDD1A961A0A69985E7E68860D0C87BE64E13030C2A7979D0A0D411507501
          ECF9D37B69E5251FA5A159D7A80096CE11CFFB3A5358A0D3899D320F0C941528
          9737EDFCE4D0CBCF3D2976369AF85070561CC4A51F4D10EC2B8049AEF47F3C74
          A3D204A1FE4204C0F6883079F9F2DA9CF45529BAAE866FC16A3E2CC08B619288
          E35B9C32B7650FD41DBDD657E2260DA94EDCF4D5CE4D4941F3ED4414B0B81083
          3F43615E28BB18AC0A02613385D8A8C0228346020201012D86A05B4F4179A546
          F7E97B2B3EB8D770E500FEFCE088000E2210A11BA71A1870C5DB1614F553CF26
          46FC2135AB24365CE420C066C0B9D9120AFCC39528F75A666BA91296073160E5
          28BA09A8BB0939929975E6FCD1756FA09A724480A16AB03EB36C32429A16EEDC
          5F9A392F262C29601A2DE00A8B8B39E7096E75CE2B666E7186CF13B3F5AAD2B2
          583100172FDE6EC878376C394ED53E9C8CC3EE86B643EA13303D7173EEE1775E
          0B89E17E9CF302B7B80582E2212C8B133E3FB8CAD00D60B2F610686A35337F4E
          9E9DD8DD59730655F4BF0A80D38D89DFB721233DE5AF93275060B60560F9C559
          EBBD254FB8806375B4AB09E870C94FB6BF9D7EFBDA175C35748E1AC0CD2B9472
          74F112B02C175DB09F15911C9FFAEE4BC7649E94C5CD64280494B54F10AB0780
          CF0DEEFF964E06BD218063874E5E2D3EBC66236B36548C0A60FEEA23BED2E973
          5F954E9505308C99C23470F07013862E8814C9682E1139636BE60F0979C8035C
          985A1180E03297CEDFACCF495FB1B9AFA7ED1CD894E32F02C4A75C7E72E1A298
          73D1A1B4BBA3E4818A004B8FDB1758ABDB2DE548F1F743B1B724A28D27DA10C0
          CC505059D1A2CADABDE2FDFBEDE547C0E6BBF2BF007C425E725ABD392FFBD538
          E12B4221C5BB19F8A4B25CD18262F91224B63930E401B001606D00E48DAAEC3D
          2B7777DDABC84295FE4702C88296046C4B3B55303F421468303E7873CABAE050
          7C09654D429687021BF75BF293F07A2D4A164C58CC45F9A76F9FFD7BD26ED3A0
          EE1FC37AC0D3376642C23BB95F26BE3C254E62CFCF712DF89E8A108D16285F6F
          0A1C1DF885883501C943B9300461306109B633A0C46E59535E5A7F29E78D1D1A
          654D21D8F4825FCC016FFF1702E2567D702820D0CB4FABD53355F2AA4EF9F5BC
          32BD56D1BEF0B73BE3925E8B8D1C3F0E1B2EFBA00F0C35253333D42159E8EAA1
          E03E6E5A84F01F12F2B2EAD2ECD4D0F8FCFC7CC5CA952BC9230170D04EAED382
          254E6EB34D06BD636F778B8231F537E2BCDA376459D8FA1DC7F6C7468F931ACD
          0F62FFB32A205CB2B2A0C36D796090A0B0182A0AEED676A8F66D9CCA01FC8800
          C611FB000E9155B82F5E3E2328011D18B176D586ED9F1F98E12B7616DB531497
          A026865F88A629FC5E10F020A8AEEB6541837B824EC730578B8EDFFCE6D8EFB6
          2040E968011E35EC83A35E4F7E3A3629C16B9A6C8683D384710E4E623B0A6322
          950AC1CE8EB2548D7E80C07D350BFA7E0A4ABF2BAEFB2EEF8F793DAAFAA308D0
          8C00EC58002C102893DD6511D1EB52BFFEF037F33C7C2CDD0FEB8F6BC1EA2E7C
          730DC334D4562BAB7EC897DFBCF4511EEADF42A9079B33C458002CF69EBED19E
          AFBC9D9B1D15E3B548807BA81A7BBFA68B218DF5B58A3BA585D577CABEFA5EA7
          FEA98210966BC12A78E818375600CB98E01124F57D62598A58E2E2A7D3B4EA54
          6DF25665F38D6AE0CF0CDCB14D038FF87C7F2C00C01F1926A2B8A1D0C0773A8D
          F53AECB9E1DF4162F04E99A9BD4B0000000049454E44AE426082}
        Name = 'PngImage8'
        Background = clWindow
      end
      item
        PngImage.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D45000000000000000973942E0000001774455874536F6674
          7761726500474C44504E472076657220332E347185A4E10000000874704E4747
          4C4433000000004A80291F000007954944415478DAAD977B6C53F715C7BF7EC4
          EFD84E6CC74E08793A0F9210020403C9108112D21690564AC680165431A9DDD8
          56CAFA1A6C13ADAA15A9FDA33CB44E5B0B5941438504D4B025E1FD8853F222C9
          2001872484BCECC476084E1C3FAF7D779CD1697FC090C1473AF2B5ECEFEF7E7E
          E79C7BCEEF72F014138B84721E2F2A2D3D25A34422895BA656E9574AA51CF7C0
          E01DD3C4C3B1EBF7877A4F78BD5E13CBB2DEA7ADF538E33CE98738B5522F142A
          57676716AD532933B2246275B23C36869B5C900AD52C159A6A2EC23BFD1066CB
          EDEEB61B178E8E5AC73E2399EF99014E9F3E25DEB2796B41417ED1EA387546D9
          EC44C312A522912353C920D7099054A045EC6C0D582E1F5E37303D1DC0EDFA56
          34579F002F8A0363FDF143E651CBA71409F33301D4D5D6C4BFFDCB7776676795
          FDD46028552B1569B05AED285C9F86E4F989F07959F83C80CB1584DFC7C13441
          307E2EDACED7C2DCD988AEF63AC7BD813B7F704C4EFD399C48FC17E0E4C9939C
          F2F272255DE608F8FC7999198BCA0D0B5E2D9C3B7FA98CA360B160ED02B01C21
          ED9C56F706E993038F8785D319C0F795FBE175D8D06BBADAD7D9D9B286D6E825
          0F3C4B0D84BE47910BC953B41ADDC6B2D2B77E2B1327735317A5A0E0E562B8DD
          3C78DCEC4C24DCAE502478B00EF5C178F4D7703A86833DFDBD6FB8DDEE4AD2BB
          9EAB081F9948A3D2BCBD66DDAF76EB74397275563CD20C45704E3170B9390400
          0CDEE9404FF37718EB33225A97870E63C5B1078EA93DA41D8C0440C8D419E9B9
          FB8B176FDBCC1371F0C22F76C217E0C3D26FC6DDEB75B8DB5C453BB7C0EFF780
          2B94C26E1DB83666B3BF43C5D8162900C8A4E2392FBEBCB343ADCD12A8F54998
          7C308E5B97BF856BCA860037085DDA7C28E23360B96FC290E94A5FFF3DD32E26
          10F8074983110120E32E31943625C6CF2B747B1DF0B826E19A1E874026C3BCB2
          ED48CC5E4E11E94663F5A7B00DDF1A1D1C1AF89DCFE7FB8674FE4801203B33F7
          93FCC53FDB3D397A9BC3B26E6415BF04FD9275B44234D542106343DDF8FEC47B
          6018CF64677BFD3E8FCF778064D31103484B4ADE92B768EB5F38AC4B52F4EA46
          C4261552430A3D0D2CF505160FC74770A3FA638A8EDD7BB3E5C29F9C2ED74724
          73440C402695FD687E7E49A5322E49BB6AFB87E08B67511F08CEF4825063723B
          27613CBE037EEF58B0BFB7B3D266B3ED249925620012B138DF50BCA12A21A358
          9F5BB41CD1EA4CB843DD91A2E06358DA3983F67FEE81324688C6F3C7EA87CDC3
          6F90EC1E391B1100A9449C95936DA8922AB4B9CBB7FC1ED17139D49A03F01004
          438DD71F8C82E9DA17186CAB809709984DDD5D3F26593B39132100497AA63EAF
          4AA14E9B57B876073469C504C0C04D2908301CF87C0C6ED67D0C4D1C8B91DE4E
          A6B1E1EC16BF9F394352774400C42281323B7BE1A9ECA51B566853164293BA8C
          F21F0013E06072DC82F633EF6162E40604222514B13A749B5A4E8E59C73E2069
          7F4400A80694A929E9557C9E60E59257F66256EE3A04A8CD8C98AEE3D6C57D70
          583A218B4924D7A0A0A80C35DF7C6E1EB40CECF278BD27F17F1A52580029B353
          AA66CF59BA52955C0CBD61334C0DC7F1AF739F20C806919A5B8A55DB3E82B9BB
          1EF5DF1E40D6BCA5B873D3D8D379BBF5754AC58D27D542182910499312938EE6
          2FDFF80AC3CAE1754EA0BFBD8AF2EF4372DE6ABAF91F11AB8D013760C37707F7
          2233A700A6D6660C0E76B559467BBEB48D8F1FC16346743811E027E87487B85C
          EE9BA01DB32C031E5F82852FBD8F821736412E8FA24205A2953CF89CA338B27B
          0FF4D9B9D026A4A2B3B905D39ED1BB56ABB96562C24CC3C254C3041873580021
          D36954FB56FDE4E71FF4751869203D407EE9FBC82FD9444D2A8868190BB19403
          998C3BE30E6B3F5A6B8DB8D7DE8FD949C9585C5C88D6861134361EB1D43756BD
          BB66EDBAAA53A74E79C3028853C5BC35A7A0F84BFB481F8A36552025C7403766
          20A59B4747732196702095B21008B890C8281A34BECF1EBB8CF6B35D9048D418
          1C6972D49C3B70D8EF0F9E59BF7EBD9100FC610168359A92B838DDE568A50A73
          4A7E83394BD7404E006231772602220997603888A23395440ADC69B889F387AF
          5084E23130D43C7DE9DAE11AC7E4C457B4542BF983B05320934AE5397317DCCF
          5B521A73B7A31D1BDEFD2B541A25DD8CA59D732112B33330A154745C6CC1858A
          4BA4D160CCDAEDAA39B7FF98DBE3ADA665AE923BC32EC21F2C335D5F2B144A5E
          54C46AB1B06C1B566CDC021E1577A8008522CABF9C83FB9D3DA8FAFC0484512A
          3C7C78DF7BB5A1E2A2D53E163A2D37915BFF77BDB001D4B1B16B1312928F94BF
          F9A1BAFAF0416CD8B5170B572CA71CF3666AE0C639232EFCAD8E9E1A359CD356
          5FEDF9439553CEA9D3243D8FC78CE7B001F83C9E725642C281384DCAEBF189C9
          14EE18A4E6E763CDF6CD30DFED43E5674721142AE067DC4C43D3DF9B8647FA0F
          92AC817CF871EB850D10329150A88DD7EA2A1718562D4ECF9C1BD57CE52A359E
          7C4CD8A7A800E5A15351F0D2B5AF6BEDE3B613F4F75A723B9E30969F0920A413
          0A04F355CAD81DF1F1FAAD29A979FCF2D75EC3F5CB6D308F58821D37ABBB7AEE
          7585767E09FF1946CF3F0B9EA0954545F197C924D1A562518C5EA150CB6CF6C1
          11FB83D12BF45B1DB9194F39193F0FC00F167A8B5290AB1F5DB38F421E3A8E3D
          F5F5ECDF6C0C2C4EC8A8473E0000000049454E44AE426082}
        Name = 'PngImage9'
        Background = clWindow
      end>
    Left = 40
    Top = 168
  end
end
