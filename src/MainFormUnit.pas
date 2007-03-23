unit MainFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, TB2Dock, TBX, SpTBXItem, TB2Toolbar, TB2Item,
  TB2ExtItems, SpTBXEditors, XPMan, Menus, JclWideStrings, TBXToolPals, ImgList,
  PngImageList, TB2MRU, VirtualTrees, VirtualExplorerTree, TntDialogs,
  TBXExtItems, ExceptionLog, TntClipbrd, PerlRegEx, FormValidation, TBXDkPanels,
  SpTBXDkPanels, mbTBXSplitter, SpTBXFormPopupMenu, JvComponentBase, JvTrayIcon,
  mbTBXNonDockablePanel, JvFormPlacement, JvAppStorage, JvAppRegistryStorage,
  MPShellUtilities,

  Configuration;

type
  // Forward declarations
  TFileReadThread = class;

  // Event used by TFileReadThread to notify clients
  TFileChangeEvent = procedure(Sender: TFileReadThread; Data: WideString) of object;

  // Thread to watch a file for additions 
  TFileReadThread = class(TThread)
  private
    FStream: TStream;
    FOnFileChangeEvent: TFileChangeEvent;
    FLinebreaksWanted: Integer;
    FSleepTime: Integer;
    procedure SetStream(const Value: TStream);
    procedure SetOnFileChangeEvent(const Value: TFileChangeEvent);
  public
    constructor Create(Filename: string); reintroduce;
    destructor Destroy; override;
  public
    procedure Execute; override;
  public
    property Stream: TStream read FStream write SetStream;
    property OnFileChangeEvent: TFileChangeEvent read FOnFileChangeEvent write SetOnFileChangeEvent;
    property LinebreaksWanted: Integer read FLinebreaksWanted write FLinebreaksWanted;
    property SleepTime: Integer read FSleepTime write FSleepTime; 
  end;

  // VT node data representing a line in the file
  TLogLineNodeData = record
    Line: WideString;
    Added: TDateTime;
    CustomHighlightColor: TColor;
  end;
  PLogLineNodeData = ^TLogLineNodeData;

  // Main form class
  TMainForm = class(TForm)
    LeftDock: TSpTBXDock;
    LeftToolbar: TSpTBXToolbar;
    AlwaysOnTopButton: TSpTBXItem;
    WordWrapItem: TSpTBXItem;
    XPManifest: TXPManifest;
    FontDialog: TFontDialog;
    LogViewPopup: TSpTBXPopupMenu;
    SpTBXItem2: TSpTBXItem;
    ExplorerTree: TVirtualExplorerTreeview;
    SmallImages: TPngImageList;
    LargeImages: TPngImageList;
    SpTBXSeparatorItem2: TSpTBXSeparatorItem;
    CopyToClipboardItem: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXRightAlignSpacerItem2: TSpTBXRightAlignSpacerItem;
    LogView: TVirtualStringTree;
    TopDock: TSpTBXDock;
    MainToolbar: TSpTBXToolbar;
    OpenFileItem: TSpTBXSubmenuItem;
    TBMRUListItem1: TTBMRUListItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    StatusLabel: TSpTBXLabelItem;
    SpTBXRightAlignSpacerItem1: TSpTBXRightAlignSpacerItem;
    CloseButton: TSpTBXItem;
    LogViewHeaderPopup: TSpTBXPopupMenu;
    ShowTimestampColumnItem: TSpTBXItem;
    SpTBXSubmenuItem1: TSpTBXSubmenuItem;
    SpTBXItem5: TSpTBXItem;
    SpTBXItem6: TSpTBXItem;
    SpTBXItem7: TSpTBXItem;
    CustomDateFormatEditItem: TSpTBXEditItem;
    SpTBXSeparatorItem3: TSpTBXSeparatorItem;
    SpTBXSubmenuItem2: TSpTBXSubmenuItem;
    BufferNoLimitItem: TSpTBXItem;
    BufferLimitEditItem: TSpTBXEditItem;
    SpTBXSeparatorItem5: TSpTBXSeparatorItem;
    CustomHighlightItem: TSpTBXSubmenuItem;
    CustomHighlightColorItem: TTBXColorPalette;
    SpTBXSeparatorItem6: TSpTBXSeparatorItem;
    SpTBXItem14: TSpTBXItem;
    FilterEdit: TSpTBXEdit;
    TBControlItem1: TTBControlItem;
    ToolbarPopup: TSpTBXPopupMenu;
    LargeIconsButton: TSpTBXItem;
    SmallIconsButton: TSpTBXItem;
    MRUList: TTBXMRUList;
    ExplorerTreePopup: TSpTBXPopupMenu;
    OpenItem: TSpTBXItem;
    FilterLabelItem: TSpTBXLabelItem;
    EurekaLog: TEurekaLog;
    SpTBXSeparatorItem4: TSpTBXSeparatorItem;
    AutoScrollItem: TSpTBXItem;
    TrayIcon: TJvTrayIcon;
    TrayIcons: TImageList;
    TrayPopup: TSpTBXPopupMenu;
    SpTBXItem1: TSpTBXItem;
    SpTBXSeparatorItem11: TSpTBXSeparatorItem;
    FlashIconItem: TSpTBXItem;
    SpTBXItem8: TSpTBXItem;
    SpTBXSeparatorItem12: TSpTBXSeparatorItem;
    ColoringRulesItem: TSpTBXItem;
    AppStorage: TJvAppRegistryStorage;
    FormStorage: TJvFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure AlwaysOnTopButtonClick(Sender: TObject);
    procedure WordWrapItemClick(Sender: TObject);
    procedure SpTBXItem2Click(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure ExplorerTreeDblClick(Sender: TObject);
    procedure LogViewGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: WideString);
    procedure FormDestroy(Sender: TObject);
    procedure SpTBXItem3Click(Sender: TObject);
    procedure SmallIconsButtonClick(Sender: TObject);
    procedure LargeIconsButtonClick(Sender: TObject);
    procedure ToolbarPopupPopup(Sender: TObject);
    procedure ShowTimestampColumnItemClick(Sender: TObject);
    procedure LogViewHeaderPopupPopup(Sender: TObject);
    procedure CustomDateFormatEditItemAcceptText(Sender: TObject; var NewText: WideString;
      var Accept: Boolean);
    procedure MRUListClick(Sender: TObject; const Filename: string);
    procedure OpenItemClick(Sender: TObject);
    procedure ExplorerTreePopupPopup(Sender: TObject);
    procedure EurekaLogExceptionActionNotify(
      EurekaExceptionRecord: TEurekaExceptionRecord;
      EurekaAction: TEurekaActionType; var Execute: Boolean);
    procedure LogViewMeasureItem(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; var NodeHeight: Integer);
    procedure CopyToClipboardItemClick(Sender: TObject);
    procedure LogViewBeforeItemErase(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; ItemRect: TRect;
      var ItemColor: TColor; var EraseAction: TItemEraseAction);
    procedure LogViewPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType);
    procedure CustomHighlightItemClick(Sender: TObject);
    procedure FilterEditChange(Sender: TObject);
    procedure DefaultTimestampFormatClick(Sender: TObject);
    procedure LogViewPopupPopup(Sender: TObject);
    procedure BufferNoLimitItemClick(Sender: TObject);
    procedure BufferLimitEditItemAcceptText(Sender: TObject;
      var NewText: WideString; var Accept: Boolean);
    procedure AutoScrollItemClick(Sender: TObject);
    procedure ColoringRulesMenuItemPopup(Sender: TTBCustomItem;
      FromLink: Boolean);
    procedure SpTBXItem14Click(Sender: TObject);
    procedure TrayIconClick(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FlashIconItemClick(Sender: TObject);
    procedure SpTBXItem1Click(Sender: TObject);
    procedure TrayPopupPopup(Sender: TObject);
    procedure SpTBXItem8Click(Sender: TObject);
    procedure CustomHighlightColorItemChange(Sender: TObject);
    procedure CustomHighlightColorItemCellClick(Sender: TTBXCustomToolPalette;
      var ACol, ARow: Integer; var AllowChange: Boolean);
    procedure ColoringRulesItemClick(Sender: TObject);
    procedure ExplorerTreeDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
    procedure ExplorerTreeEnumFolder(Sender: TCustomVirtualExplorerTree;
      Namespace: TNamespace; var AllowAsChild: Boolean);
    procedure LogViewDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
  private
    // color the filter edit depending on regex correctness
    FilterEditValidator: TFormValidator;
    // store app configuration
    Settings: TWormtailSettings;
  private
    // Generated by IDE
    FCurrentFilename: WideString;
    FWatchThread: TFileReadThread;
    FLastHighlightColor: TColor;
    procedure SetLastHighlightColor(const Value: TColor);
    procedure SetCurrentFilename(const Value: WideString);
  protected
    procedure InitializeHintsFromCaption(AParent: TComponent);
    procedure EventHandler(Sender: TFileReadThread; Data: WideString);
    // Vista fixes
    procedure CreateParams(var Params: TCreateParams); override;
    procedure WMSyscommand(var Message: TWmSysCommand); message WM_SYSCOMMAND;
    procedure WMActivate(var Message: TWMActivate); message WM_ACTIVATE;   
  public
    // Generic
    procedure OpenFile(AFilename: string);
    procedure CloseFile;
    procedure UpdateGUI;
    procedure UpdateStatusLabel;
    procedure ToFromTray(Restore: Boolean);

    // Settings
    procedure LoadAppSettings;
    procedure SaveAppSettings;
    procedure ApplyToSettings;
    procedure ApplyFromSettings;

    // Explorer mode
    function CanOpenSelectedNode: Boolean;
    function SelectedNodeFilename: WideString;

    // Log mode
    procedure SelectionSetCustomColorHighlight(AColor: TColor);
    procedure TrimBuffer;
    procedure ApplyFilter(StartNode: PVirtualNode);
    procedure ExecuteRules(ApplyTo: PVirtualNode;
      RequireParent: PVirtualNode = nil; ThisSubtree: Boolean = False);  // ThisSubtree is ignored if RequireParent = nil
    procedure ReapplyRulesToBuffer(ARule: PVirtualNode = nil);      
  public
    // Set-Accessor takes care of updating caption. Apart from that, best not
    // touch it, use OpenFile() and CloseFile() instead.
    property CurrentFilename: WideString read FCurrentFilename write SetCurrentFilename;
    property LastHighlightColor: TColor read FLastHighlightColor write SetLastHighlightColor;
  end;

var
  MainForm: TMainForm;

var
  FileChangeEvent_CS: TRTLCriticalSection;

const
  // Linebreak format to use when exporting nodes
  LineBreakFmt = #13#10;

implementation

uses
  Math, TaskDialog,
  Core, VistaCompat, GnuGetText, AboutFormUnit, RulesFormUnit;

{$R *.dfm}

{ TFileReadThread }

constructor TFileReadThread.Create(Filename: string);
begin
  inherited Create(True);
  FLinebreaksWanted := 10;
  FSleepTime := 10;
  Priority := tpLower;
  FStream := TFileStream.Create(Filename, fmOpenRead or fmShareDenyNone);
end;

destructor TFileReadThread.Destroy;
begin
  Stream.Free;
  inherited;
end;

procedure TFileReadThread.Execute;
var
  T: string;
  BufferSize: Cardinal;
  StartingPosition: Cardinal;

  // Extract the last X lines from a stream
  
  function ParseTail: string;
  var
    I: Integer;
    LinebreakCount: Integer;
    BytesToRead, StopPosition: Cardinal;
    LastChar: Char;  // needed so we don't count a #13#10 twice
  const
    BytesAPieceToRead = 1024;
    LinebreakChars = [#13, #10];
  begin
    // Init variables
    StopPosition := 0;
    LinebreakCount := 0;
    LastChar := #0;
    // Try to read the last few lines of the file:
    while Stream.Position > 0 do
    begin
      // Always read X bytes a piece, except for when there are fewer bytes left
      // in the file. Determine that now.
      BytesToRead := Min(BytesAPieceToRead, Stream.Position);
      Stream.Position := Stream.Position - BytesToRead;
      // Read the number of bytes we just decided on
      SetLength(T, BytesToRead);
      Stream.ReadBuffer(T[1], BytesToRead);
      // Reset the position counter by the number of bytes we just read,
      // or we will read the same thing again next time.
      Stream.Position := Stream.Position - BytesToRead;
      
      // Search the buffer for line breaks
      for I := Length(T) downto 1 do
      begin
        if T[I] in LinebreakChars then
          // Make sure #13#10 combinations are only counted once - only continue
          // if the last character was no linebreak at all, or the same one we
          // handle now (in which case there is an empty line, probably).
          if (T[I] = LastChar) or not (LastChar in LinebreakChars) then
          begin
            // We found another (valid) linebreak
            Inc(LinebreakCount);
            // If there are enough lines, stop here
            if LinebreakCount > LinebreaksWanted then
            begin
              // Calculate the (virtual) position the current linebreak character
              // has in the stream, and move the stream there (do not include
              // the linebreak itself)
              StopPosition := Stream.Position + I;
              Break;
            end;
          end
          // If this was not a valid linebreak, reset LastChar explicitely to
          // #0, otherwise, multiple linebreaks #13#10#13#10#13#10 will not be
          // detected correctly (as we will always think the current one belongs
          // to the last one. The alternative way to handle this would be to
          // actually *look* at the order of #13#10, and only accept the
          // correct one. Probably even the better solution. 
          else begin
            LastChar := #0;
            Continue;  // skip the standard LastChar assignment below
          end;

        LastChar := T[I];  
      end;

      // Check if we are at the end of our tail reading process. This is either
      // the case if we reached the beginning of the file, or if StopPosition
      // has been set (which means that we found as many lines as we want).
      if (StopPosition <> 0) or (Stream.Position = 0) then
      begin
        // Go to the stop position
        Stream.Position := StopPosition;
        // Now read everything from there to our starting position (which is
        // were we previously started searching backwards).
        BytesToRead := StartingPosition - Stream.Position;
        SetLength(T, BytesToRead);
        Stream.ReadBuffer(T[1], BytesToRead);
        // Return what the buffer we read and exit
        Result := T;
        Break;        
      end;
    end;
  end;

  procedure DoOnFileChangeEvent(Str: Widestring);
  begin
    // TODO 1: is this actually enough to make our access thread safe?
    EnterCriticalSection(FileChangeEvent_CS);
    try
      FOnFileChangeEvent(Self, Str);
    finally
      LeaveCriticalSection(FileChangeEvent_CS);
    end;
  end;

begin
  // We start at the end of the file. Please note that before we can actually
  // watch for changes we have to do some other work first, and while we do
  // that the file might change. We store the (current) end of the file in a
  // varibale here so that we can later continue at exactly that point.
  StartingPosition := Stream.Size;
  
  // Starting off, jump to the end of the file
  Stream.Position := StartingPosition;

  // Read the tail of the file, and return to client
  try
    T := ParseTail;
    if (T <> '') then
      if Assigned(FOnFileChangeEvent) then
       DoOnFileChangeEvent(WideString(T));
  except
    // TODO 1: If a file shrinks DURING execution of ParseTail, potentially
    // bad stuff might happen. For now, just ignore any exceptions and continue
    // business as usual afterwards.
  end;

  // Jump to the end (the "end" we previously determined), and start
  // watching the file from there.
  Stream.Position := StartingPosition;

  // Loop until termination
  while not Terminated do
  begin
    try
      // Check if the file was made smaller (e.g. portions have been removed).
      // there's really nothing we can do about it (and it goes against the
      // assumptions we make for this tool), but at least we can notify the
      // user about it.
      // It looks like TStream does not automatically adjust Stream.Position
      // to the new maximum size of this happens. On the one hand, this sucks,
      // but at the same time it comes in handy as we can use it to check
      // if the file was made smaller without using a separate variable (that
      // would store the last known position/size).
      if (Stream.Position > Stream.Size) then
      begin
        // TODO 1: dxgettext claims it is not threadsafe. Is this a problem
        // for us? Should we create a separate instance for this thread?
        DoOnFileChangeEvent(Format(_('WARNING: The size of this file just '+
          'decreased by %d bytes.'), [Stream.Position-Stream.Size]));
        // Not automatically adjusted, fix position pointer
        Stream.Position := Stream.Size;
      end;

      // something was added
      if Stream.Position <> Stream.Size then
      begin
        // Read how many bytes were added. and store in local variable.
        // We are not going to touch more later than the number we receive
        // here, as it is possible (actually happend quite often during testing)
        // that the file is changed *again* while we are handling this specific
        // change.
        BufferSize := Stream.Size - Stream.Position;

        // If no callback event is assigned, ignore this change and just
        // advance the file pointer
        if not Assigned(FOnFileChangeEvent) then
          Stream.Position := Stream.Position + BufferSize
        // Otherwise, read the new data from the file and tell our client
        else begin
          SetLength(T, BufferSize);
          Stream.ReadBuffer(T[1], BufferSize);

          // call event handler through a critical section
          DoOnFileChangeEvent(Widestring(T));
        end;
      end;

      // Save some CPU time, don't overdo it.
      Sleep(SleepTime);
    except
      // If there is an exception, show it to the user as well, and do an extra long sleep
      on E: Exception do
      begin
         // TODO 1: dxgettext thread safety issues as well, see above
         DoOnFileChangeEvent(Format(_('WARNING: An exception occured in the watch thread: "%s"'), [E.Message]));
         Sleep(SleepTime*3);         
      end;
    end;
  end;
end;

procedure TFileReadThread.SetOnFileChangeEvent(const Value: TFileChangeEvent);
begin
  FOnFileChangeEvent := Value;
end;

procedure TFileReadThread.SetStream(const Value: TStream);
begin
  FStream := Value;
end;

{ TMainForm }

procedure TMainForm.CloseFile;
begin
  if FWatchThread <> nil then
  begin
    // Close down the thread (and with it the file handle)
    FWatchThread.Free;
    FWatchThread := nil;

    // Add the file we just closed to the mru list
    MRUList.Add(CurrentFilename);

    // We no longer have a file opened
    CurrentFilename := '';

    // update the gui
    UpdateGUI;

    // Clear view
    LogView.Clear;
    // Clear filter
    FilterEdit.Text := '';    
  end;
end;

procedure TMainForm.EurekaLogExceptionActionNotify(
  EurekaExceptionRecord: TEurekaExceptionRecord;
  EurekaAction: TEurekaActionType; var Execute: Boolean);
begin
  // If there is an unhandled exception, make sure our main form is not in
  // "always on top" mode, or we will not see the exception dialog.
  if (EurekaAction = atShowingExceptionInfo) then
  begin
    AlwaysOnTopButton.Checked := False;
    AlwaysOnTopButtonClick(AlwaysOnTopButton);
  end;
end;

procedure TMainForm.EventHandler(Sender: TFileReadThread; Data: WideString);
var
  Strings: TWideStringList;
  I: Integer;
  NewNode, FirstNodeAdded: PVirtualNode;
  NewNodeData: PLogLineNodeData;
begin
   LogView.BeginUpdate;
   FirstNodeAdded := nil;
   try
     Strings := TWideStringList.Create;
     try
       Strings.Text := Data;
       for I := 0 to Strings.Count - 1 do
       begin
         // create a new node and init it's data record
         NewNode := LogView.AddChild(nil);
         NewNodeData := LogView.GetNodeData(NewNode);
         NewNodeData.Added := Now;
         NewNodeData.Line := Strings[I];
         NewNodeData.CustomHighlightColor := clNone;
         // make sure the node is initialized
         LogView.ReinitNode(NewNode, False);
         // store the first node we add for later
         if FirstNodeAdded = nil then
           FirstNodeAdded := NewNode;
         // execute rules for this node
         ExecuteRules(NewNode);
       end;
     finally
       Strings.Free;
     end;

    // attempt to cleanup buffer
    if Settings.AutoTrimBuffer then TrimBuffer;

    // apply current filter to all new nodes
    ApplyFilter(FirstNodeAdded);
  finally
    LogView.EndUpdate;
  end;

  // auto scroll to bottom?
  if Settings.AutoScroll then
    LogView.ScrollIntoView(LogView.GetLast, False);

  // if a node was added and we are in tray mode, anmiated the icon
  if TrayIcon.Active and (FirstNodeAdded <> nil) and Settings.FlashTrayIconOnChange then
    TrayIcon.Animated := True;

  // update status / line count
  UpdateStatusLabel;
end;

procedure TMainForm.ExecuteRules(ApplyTo: PVirtualNode;
  RequireParent: PVirtualNode = nil; ThisSubtree: Boolean = False);
var
  CurrentNode: PVirtualNode;
  RuleData: PLogRule;
  NodeData: PLogLineNodeData;
  PCRE: TPerlRegEx;

  function CheckRule(Rule: PLogRule): Boolean;
  begin
    PCRE.RegEx := Rule.Regex;
    PCRE.Subject := NodeData.Line;
    try
      Result := PCRE.Match;
    except
      Result := False;
    end;
    // if the rule is inverse, reverse the result
    if Rule.Inverse then Result := not Result;
  end;

begin
  // sanitize parameters - ThisSubtree makes no sense without "RequireParent".
  if (RequireParent = nil) then ThisSubtree := False; 

  // get data of log line to check
  NodeData := LogView.GetNodeData(ApplyTo);

  // init regex engine
  PCRE := TPerlRegEx.Create(nil);

  try
    with RulesForm.RulesList do
    begin
      // select the node to start with. three options:
      //   # RequireParent = nil: We get the very first node in the tree, and
      //       proceed to loop through everything.
      //   # RequireParent <> nil, ThisSubtree = False; We handle all child nodes
      //       of RequireParent, but not the node itself. This is usually what
      //       happens everytime this function calls itself recursively.
      //   # RequireParent <> nil, ThisSubtree = True; We first handle the node
      //       itself, and then it's childs, but no siblings of the node are
      //       processed. This can be used by exernal callers to execute one
      //       specific subtree.
      if (ThisSubtree = False) or (RequireParent = nil) then
        CurrentNode := GetFirstChild(RequireParent)
      else CurrentNode := RequireParent;
      // loop through tree
      while CurrentNode <> nil do
      begin
        // get data for this node
        RuleData := GetNodeData(CurrentNode);

        // check the rule, but only if it is enabled, or if it is a
        // "ThisSubtree" target. I.e. we will ignore a "disabled" state if
        // it was explicitly asked to execute this node
        if (RuleData^.Enabled or ThisSubtree) and (CheckRule(RuleData)) then
        begin
          // apply highlight color
          NodeData.CustomHighlightColor := RuleData.HighlightColor;

          // execute child nodes
          ExecuteRules(ApplyTo, CurrentNode, False);
        end;

        // if a specific subtree was requested, stop here. Otherwise,
        // continue with the next sibling.
        if (ThisSubtree) then CurrentNode := nil
        else CurrentNode := GetNextSibling(CurrentNode);
      end;
    end;
  finally
    PCRE.Free;
  end;
end;

procedure TMainForm.ExplorerTreeDblClick(Sender: TObject);
begin
  if CanOpenSelectedNode then
    OpenFile(SelectedNodeFilename);
end;

procedure TMainForm.ExplorerTreeDragOver(Sender: TBaseVirtualTree;
  Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint;
  Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
begin
  // Do not accept drag/drops, ever
  Accept := False;
end;

procedure TMainForm.ExplorerTreeEnumFolder(Sender: TCustomVirtualExplorerTree;
  Namespace: TNamespace; var AllowAsChild: Boolean);
begin
  // Do not show control panel
  AllowAsChild := not Namespace.IsControlPanel;
end;

procedure TMainForm.ExplorerTreePopupPopup(Sender: TObject);
begin
  OpenItem.Enabled := CanOpenSelectedNode;
end;

procedure TMainForm.FilterEditChange(Sender: TObject);
begin
  try
    ApplyFilter(nil);
  except
    // for some reason (bug?) an TPerlRegEx exception, even though it is
    // enclosed by TWO(!) except-clauses still is not caught in ApplyFilter.
    // To workaround that we catch it here again (which works, afai could try)
  end;
end;

procedure TMainForm.FlashIconItemClick(Sender: TObject);
begin
  Settings.FlashTrayIconOnChange := FlashIconItem.Checked;
  // Disable any already active animiations
  if not Settings.FlashTrayIconOnChange then
    TrayIcon.Animated := False;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  // Vista "Secret window" fixes
  ShowWindow(Application.Handle, SW_HIDE);
  SetWindowLong(Application.Handle, GWL_EXSTYLE,
    GetWindowLong(Application.Handle, GWL_EXSTYLE) and not WS_EX_APPWINDOW
      or WS_EX_TOOLWINDOW);
  ShowWindow(Application.Handle, SW_SHOW);

  // use font setting of os (mainly intended for new vista font)
  SetDesktopIconFonts(Self.Font);

  // Localize
  TP_GlobalIgnoreClass(TJvAppStorage);
  TP_GlobalIgnoreClass(TJvFormStorage);  
  TranslateComponent(Self);

  // Set the hint property of all toolbar buttons to their caption
  InitializeHintsFromCaption(Self);

  // Create some objects
  FilterEditValidator := TFormValidator.Create;
  FilterEditValidator.AddRule(FilterEdit, dvrCustom);

  // Init controls
  LogView.NodeDataSize := SizeOf(TLogLineNodeData);
  MRUList.Prefix := '';              // Has a space ' ' at designtime to shut dxgettext up.
                                     // A nempty string does not work because the control
                                     // willreset the value the next time the project is
                                     // loaded at designtime

  // Initialize storage
  AppStorage.Root := 'Software\Wormtail';
  FormStorage.AppStoragePath := 'MainForm';

  // Load configuration
  Settings := TWormtailSettings.Create;
  LoadAppSettings;

  // Init some properties
  LastHighlightColor := Settings.DefaultHighlightColor;

  // Activate the integrated explorer
  ExplorerTree.Active := True;

  // Start off with an empty file
  FWatchThread := nil;
  CurrentFilename := '';

  // Create the rules form
  RulesForm := TRulesForm.Create(Self);
  RulesForm.Visible := False;  

  // Update the GUI to reflect init state
  UpdateGUI;

  // If a parameter was passed, go ahead and try to open that file right now
  if ParamCount = 1 then
    OpenFile(ParamStr(1));
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  SaveAppSettings;

  CloseFile;
  FilterEditValidator.Free;
  Settings.Free;
end;

procedure TMainForm.InitializeHintsFromCaption(AParent: TComponent);
var
  I: Integer;
begin          
  for I := 0 to AParent.ComponentCount - 1 do
  begin               
    // check if this is a toolbar item
    if (AParent.Components[I] is TTBCustomItem)
      and ((AParent.Components[I] as TTBCustomItem).Hint = '') then
        with (AParent.Components[I] as TTBCustomItem) do Hint := Caption;

    // resursive, search child components
    if (AParent.Components[I] is TComponent) then
      InitializeHintsFromCaption(AParent.Components[I]);
  end;
end;

procedure TMainForm.LargeIconsButtonClick(Sender: TObject);
begin
  if not (ToolbarPopup.PopupComponent is TTBCustomToolbar) then Exit;
                               
  with (ToolbarPopup.PopupComponent as TTBCustomToolbar) do
    Images := LargeImages;
end;

procedure TMainForm.LoadAppSettings;
begin
  // Read settings object
  AppStorage.ReadPersistent('', Settings, False);
  // Read MRU List
  AppStorage.ReadStringList('MRU', MRUList.Items, True);
  
  // Not all options are accessed directly from the settings object. For those,
  // we have to apply their values manually to wherever they are used / have
  // influence.
  ApplyFromSettings;
end;

procedure TMainForm.LogViewBeforeItemErase(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; ItemRect: TRect;
  var ItemColor: TColor; var EraseAction: TItemEraseAction);
var
  Data: PLogLineNodeData;
begin
  Data := Sender.GetNodeData(Node);
  if Data^.CustomHighlightColor <> clNone then
    with TargetCanvas do
    begin
      Brush.Color := Data^.CustomHighlightColor;
      FillRect(ItemRect);
      EraseAction := eaNone;
    end;
end;

procedure TMainForm.LogViewDragOver(Sender: TBaseVirtualTree; Source: TObject;
  Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
  var Effect: Integer; var Accept: Boolean);
begin
  // Don't accept drag&drop
  Accept := False;
end;

procedure TMainForm.LogViewGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: WideString);
var
  Data: PLogLineNodeData;
begin
  // Free the data associated with the node
  Data := Sender.GetNodeData(Node);
  if Column = 0 then CellText := Data^.Line
  else if Column = 1 then CellText := FormatDateTime(Settings.TimestampColumnFormat, Data^.Added)
  else CellText := '';
end;

procedure TMainForm.LogViewHeaderPopupPopup(Sender: TObject);
begin
  // init popup menu state
  ShowTimestampColumnItem.Checked := (coVisible in LogView.Header.Columns[1].Options);
  CustomDateFormatEditItem.Text := Settings.TimestampColumnFormat;
end;

procedure TMainForm.LogViewMeasureItem(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; var NodeHeight: Integer);
begin
  // Only touch NodeHeight if we are in multiline/wordwrap mode 
  if WordWrapItem.Checked then
  begin
    TargetCanvas.Font := LogView.Font;
    NodeHeight := LogView.ComputeNodeHeight(TargetCanvas, Node, 0)+5;
  end
  else
    NodeHeight := LogView.DefaultNodeHeight;
end;

procedure TMainForm.LogViewPaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  Data: PLogLineNodeData;
begin
  // Show the date column in grey, per default
  if Column = 1 then TargetCanvas.Font.Color := clGray;

  // Check if the current items has highlighting, and if so, choose an
  // appropriate font color with good contrast (will overwrite the date color)
  Data := Sender.GetNodeData(Node);
  if Data^.CustomHighlightColor <> clNone then
    TargetCanvas.Font.Color := GetGoodContrast(Data^.CustomHighlightColor);

  // Reset the text color for selected and drop target nodes.
  if ((Node = Sender.DropTargetNode) or (vsSelected in Node.States)) then
    TargetCanvas.Font.Color := clHighlightText;
end;

procedure TMainForm.LogViewPopupPopup(Sender: TObject);
begin
  // init popup menu state
  CustomHighlightItem.Enabled := LogView.SelectedCount > 0;
  CopyToClipboardItem.Enabled := LogView.SelectedCount > 0;
  BufferLimitEditItem.Text := IntToStr(Settings.MaxBuffer);
  BufferNoLimitItem.Checked := not Settings.AutoTrimBuffer;
  AutoScrollItem.Checked := Settings.AutoScroll;
  CustomHighlightColorItem.Color := clNone;   // never preselect anything
end;

procedure TMainForm.MRUListClick(Sender: TObject; const Filename: string);
begin
  // Open the path in internal explorer
  ExplorerTree.BrowseTo(Filename, True, True, False, False);

  // Open the file
  OpenFile(Filename);  
end;

procedure TMainForm.OpenFile(AFilename: string);
var
  NewWatchThread: TFileReadThread;
begin
  try
    // try to create a new file thread - note: if this files,
    // we can continue with the current file, as the old one is not yet closed.
    NewWatchThread := TFileReadThread.Create(AFilename);
  except
    on E: Exception do
    begin
      // Show error message
      with TTaskDialog.Create(Self) do begin
        DialogPosition := dpOwnerFormCenter;
        Title := _('Error');
        Icon := tiError;
        Instruction := 'Failed to open file.';
        Content := _(Format('The following error occured: %s', [E.Message]));
        Execute;
      end;
      // Remove that item from MRU list, if it exists
      MRUList.Remove(AFilename);
      // don't go any further
      Exit;
    end;
  end;

  // if we are here we could successfully create the thread (and open the file);
  // now try to close the existing one, if possible
  CloseFile;

  // continue with the thread object we just created.
  FWatchThread := NewWatchThread;
  FWatchThread.LinebreaksWanted := Settings.NumberOfLinesPreloaded;
  FWatchThread.SleepTime := Settings.ThreadSleepTime;
  FWatchThread.OnFileChangeEvent := EventHandler;
  FWatchThread.Resume;

  // update gui
  CurrentFilename := AFilename;
  UpdateGUI;
end;

procedure TMainForm.OpenItemClick(Sender: TObject);
begin
  if CanOpenSelectedNode then
    OpenFile(SelectedNodeFilename);
end;

procedure TMainForm.ReapplyRulesToBuffer(ARule: PVirtualNode);
var
  CurrentNode: PVirtualNode;
begin
  Screen.Cursor := crHourGlass;
  LogView.BeginUpdate;
  try
    // loop through buffer
    CurrentNode := LogView.GetFirst;
    while CurrentNode <> nil do
    begin
      // if a specific rule was requested, apply that one. otherwise,
      // apply all rules
      ExecuteRules(CurrentNode, ARule, True);

      // next
      CurrentNode := LogView.GetNext(CurrentNode);
    end;
  finally
    LogView.EndUpdate;
    Screen.Cursor := crDefault;    
    LogView.Invalidate;
  end;
end;

procedure TMainForm.ApplyFilter(StartNode: PVirtualNode);
var
  Data: PLogLineNodeData;
  CurrentNode: PVirtualNode;
  PCRE: TPerlRegEx;
begin
  PCRE := TPerlRegEx.Create(nil);
  try
    // try to compile regex
    PCRE.RegEx := FilterEdit.Text;
    try
      try
        if FilterEdit.Text <> '' then PCRE.Compile;  // don't attempt if no text
        // Everything is fine, hide any indicators
        FilterEditValidator.RulesByControl[FilterEdit].Failed := False;
      except
        // if there is an error during regex compile, stop here and don't do/change
        // anything. in fact, this might be just a temporary invalid state, while
        // the user is writing/building his expression.
        FilterEditValidator.RulesByControl[FilterEdit].Failed := True;
      end;
    except
      // sometimes the exception get's not caught the first time?
    end;

    // start either at the node passed, or at the beginning
    if StartNode = nil then CurrentNode := LogView.GetFirst
    else CurrentNode := StartNode;
    // loop through nodes 
    while CurrentNode <> nil do
    begin
      // retrieve data and search
      Data := LogView.GetNodeData(CurrentNode);
      PCRE.Subject := Data^.Line;  
      LogView.IsVisible[CurrentNode] :=
        (FilterEdit.Text = '') or (PCRE.Match);
      // next node
      CurrentNode := LogView.GetNextSibling(CurrentNode);
    end;
  finally
    PCRE.Free;
    UpdateStatusLabel;    
  end;
end;

procedure TMainForm.ApplyFromSettings;
begin
  if (Settings.TopToolbarLargeIcons) then MainToolbar.Images := LargeImages
  else MainToolbar.Images := SmallImages;
  if (Settings.LeftToolbarLargeIcons) then LeftToolbar.Images := LargeImages
  else LeftToolbar.Images := SmallImages;
  LogView.Font.Assign(Settings.ListFont);  
end;

procedure TMainForm.ApplyToSettings;
begin
  Settings.TopToolbarLargeIcons := MainToolbar.Images = LargeImages;
  Settings.LeftToolbarLargeIcons := LeftToolbar.Images = LargeImages;
  Settings.ListFont.Assign(LogView.Font);
end;

procedure TMainForm.AutoScrollItemClick(Sender: TObject);
begin
  Settings.AutoScroll := AutoScrollItem.Checked;
end;

procedure TMainForm.BufferLimitEditItemAcceptText(Sender: TObject;
  var NewText: WideString; var Accept: Boolean);
var
  NewBufferSize: Integer;
begin
  Accept := False;
  try
    // try to convert the input to an integer
    NewBufferSize := StrToInt(NewText);
    if (NewBufferSize > 0) then
    begin
      // If we reach this point, no conversion error occured, so accept the change
      Settings.MaxBuffer := NewBufferSize;
      Accept := True;

      // Auto-activate trimming (why else would the user change this value?)
      Settings.AutoTrimBuffer := True;
    end;
  except
    on EConvertError do begin Accept := False; end;  // ignore, don't accept input
  end;
end;

procedure TMainForm.BufferNoLimitItemClick(Sender: TObject);
begin
  Settings.AutoTrimBuffer := not BufferNoLimitItem.Checked;
end;

function TMainForm.CanOpenSelectedNode: Boolean;
var
  Selected: TNamespaceArray;
begin
  Selected := ExplorerTree.SelectedToNamespaceArray;
  Result := (High(Selected) = 0) and (not Selected[0].Directory) and
    (Selected[0].FileSystem) and
    // for some reason, Namespaces.Directory does not always work, e.g. for directory links
    (not DirectoryExists(Selected[0].NameForParsing));
end;

procedure TMainForm.TrayIconClick(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbLeft then ToFromTray(True);
end;

procedure TMainForm.TrayPopupPopup(Sender: TObject);
begin
  FlashIconItem.Checked := Settings.FlashTrayIconOnChange;
end;

procedure TMainForm.TrimBuffer;
var
  ItemsToDelete: Cardinal;
  I: Integer;
begin
  // If we currently do not have a buffer limit, do nothing
  if Settings.MaxBuffer = 0 then Exit;

  // Determine how many items need to be deleted
  ItemsToDelete := LogView.RootNodeCount - Settings.MaxBuffer;

  // Go a head and delete, starting at the head
  LogView.BeginUpdate;
  try
    for I := 1 to ItemsToDelete do
      LogView.DeleteNode(LogView.GetFirst);
  finally
    LogView.EndUpdate;
    UpdateStatusLabel;   // item count may have changed
  end;
end;

procedure TMainForm.CloseButtonClick(Sender: TObject);
begin
  CloseFile;
end;

procedure TMainForm.SaveAppSettings;
begin
  // Not all options stored directly in the settings object. For those, we have
  // to manually update the value stored by the Settings object, before we write
  // everthing to the storage.
  ApplyToSettings;

  // Write settings object
  AppStorage.WritePersistent('', Settings, False);
  // Write MRU List
  AppStorage.WriteStringList('MRU', MRUList.Items);  
end;

function TMainForm.SelectedNodeFilename: WideString;
var
  Selected: TNamespaceArray;
begin
  Selected := ExplorerTree.SelectedToNamespaceArray;
  if (High(Selected) = 0) then
    Result := Selected[0].NameForParsing
  else
    Result := '';
end;

procedure TMainForm.SelectionSetCustomColorHighlight(AColor: TColor);
var
  I: Integer;
  Selection: TNodeArray;
  NodeData: PLogLineNodeData;
begin
  // set highlight color for all selected items
  Selection := LogView.GetSortedSelection(False);
  for I := 0 to High(Selection) do
  begin
    NodeData := LogView.GetNodeData(Selection[I]);
    NodeData^.CustomHighlightColor := AColor;
  end;
end;

procedure TMainForm.SetCurrentFilename(const Value: WideString);
begin
  if FCurrentFilename <> Value then
    FCurrentFilename := Value;

  // update caption
  if Value = '' then
  begin
    Caption := Appname;
    Application.Title := Appname;
  end else
  begin
    Caption := Appname + ' ['+Value+']';
    Application.Title := Appname + ' ['+ExtractFileName(Value)+']';
  end;
  // tray hint is always = application.title
  TrayIcon.Hint := Application.Title;
end;

procedure TMainForm.SetLastHighlightColor(const Value: TColor);
begin
  FLastHighlightColor := Value;
end;

procedure TMainForm.ShowTimestampColumnItemClick(Sender: TObject);
var
  NewOptions: TVTColumnOptions;
begin
  NewOptions := LogView.Header.Columns[1].Options;
  if ShowTimestampColumnItem.Checked then Include(NewOptions, coVisible)
  else Exclude(NewOptions, coVisible);
  LogView.Header.Columns[1].Options := NewOptions;  
end;

procedure TMainForm.SmallIconsButtonClick(Sender: TObject);
begin
  if not (ToolbarPopup.PopupComponent is TTBCustomToolbar) then Exit;

  with (ToolbarPopup.PopupComponent as TTBCustomToolbar) do
    Images := SmallImages;
end;

procedure TMainForm.CustomDateFormatEditItemAcceptText(Sender: TObject;
  var NewText: WideString; var Accept: Boolean);
begin
  Settings.TimestampColumnFormat := NewText;
end;

procedure TMainForm.CustomHighlightColorItemCellClick(
  Sender: TTBXCustomToolPalette; var ACol, ARow: Integer;
  var AllowChange: Boolean);
begin
  CustomHighlightColorItem.Tag := 1;
end;

procedure TMainForm.CustomHighlightColorItemChange(Sender: TObject);
begin
  // if tag = 1, then the color has been changed by the user via a click.
  // otherwise, we probably changed it ourselfs via code. unfortunately,
  // this event handler is always called regardless, so we have to use this
  // workaround. 
  if CustomHighlightColorItem.Tag = 1 then
  begin
    CustomHighlightColorItem.Tag := 0;  // reset flag
    SelectionSetCustomColorHighlight(CustomHighlightColorItem.Color);
    // Store this as the last used highlight color
    LastHighlightColor := CustomHighlightColorItem.Color;
  end;
end;

procedure TMainForm.CustomHighlightItemClick(Sender: TObject);
begin
  SelectionSetCustomColorHighlight(LastHighlightColor);
end;

procedure TMainForm.DefaultTimestampFormatClick(Sender: TObject);
begin
  Settings.TimestampColumnFormat := TSpTBXItem(Sender).Caption;
end;

procedure TMainForm.ColoringRulesMenuItemPopup(Sender: TTBCustomItem;
  FromLink: Boolean);
begin
  // Create a submenu item for each rule
end;

procedure TMainForm.CopyToClipboardItemClick(Sender: TObject);
var
  I: Integer;
  Selection: TNodeArray;
  NodeData: PLogLineNodeData;
  CopyStr: WideString;
begin
  Selection := LogView.GetSortedSelection(False);
  for I := 0 to High(Selection) do
  begin
    NodeData := LogView.GetNodeData(Selection[I]);
    CopyStr := CopyStr + NodeData^.Line + LineBreakFmt;
  end;
  TntClipboard.AsText := CopyStr;
end;

procedure TMainForm.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);  
  Params.ExStyle := Params.ExStyle and not WS_EX_TOOLWINDOW or
    WS_EX_APPWINDOW;
end;

procedure TMainForm.SpTBXItem14Click(Sender: TObject);
begin
  ToFromTray(False);
end;

procedure TMainForm.SpTBXItem1Click(Sender: TObject);
begin
  ToFromTray(True);
end;

procedure TMainForm.SpTBXItem2Click(Sender: TObject);
begin
  if FontDialog.Execute then
  begin
    LogView.Font.Assign(FontDialog.Font);
  end;
end;

procedure TMainForm.SpTBXItem3Click(Sender: TObject);
begin
  with TAboutForm.Create(Self) do
  begin
    PopupParent := Self;  // vista    
    ShowModal;
    Free;
  end;
end;

procedure TMainForm.ColoringRulesItemClick(Sender: TObject);
begin
  RulesForm.Visible := ColoringRulesItem.Checked;
end;

procedure TMainForm.SpTBXItem8Click(Sender: TObject);
begin
  SelectionSetCustomColorHighlight(clNone);
end;

procedure TMainForm.ToFromTray(Restore: Boolean);
begin
  if Restore then
  begin
    Self.Show;
    // Reset tray icon
    TrayIcon.Active := False;
    TrayIcon.Animated := False;
    TrayIcon.IconIndex := 0;
  end else
  begin
    TrayIcon.Active := True;
    Self.Hide;
  end;
end;

procedure TMainForm.ToolbarPopupPopup(Sender: TObject);
var
  CorrectClass: Boolean;
begin
  CorrectClass := (ToolbarPopup.PopupComponent is TTBCustomToolbar);

  // disable buttons if popup is on wrong class (should not happen though)
  SmallIconsButton.Enabled := CorrectClass;
  LargeIconsButton.Enabled := CorrectClass;

  // preselect the correct items
  with (ToolbarPopup.PopupComponent as TTBCustomToolbar) do
  begin
    SmallIconsButton.Checked := Images = SmallImages;
    LargeIconsButton.Checked := Images = LargeImages;
  end;
end;

procedure TMainForm.UpdateGUI;
var
  FileIsOpen: Boolean;
begin
  // if a watchthread object exists, we consider being in "file open" mode
  FileIsOpen := FWatchThread <> nil;

  // change visible/enabled properties of GUI elements
  ExplorerTree.Visible := (FileIsOpen = False);
  LogView.Visible := (FileIsOpen = True);
  CloseButton.Visible := (FileIsOpen = True);
  WordWrapItem.Enabled := (FileIsOpen = True);
  ColoringRulesItem.Enabled := (FileIsOpen = True);
  StatusLabel.Visible := (FileIsOpen = True);
  FilterEdit.Visible := (FileIsOpen = True);
  FilterLabelItem.Visible := (FileIsOpen = True);
  OpenFileItem.Visible := (FileIsOpen = False);
  RulesForm.Visible := (FileIsOpen = True) and (ColoringRulesItem.Checked);

  // update the status label as well
  UpdateStatusLabel;  
end;

procedure TMainForm.UpdateStatusLabel;
var
  NewCaption: string;
begin
  NewCaption := Format(_('%d items'), [LogView.RootNodeCount]);
  // if there are hidden nodes
  if (LogView.VisibleCount <> LogView.RootNodeCount) then
    NewCaption := NewCaption + Format(_(', %d hidden'),
       [LogView.RootNodeCount-LogView.VisibleCount]);
  StatusLabel.Caption := NewCaption;
end;

procedure TMainForm.WMActivate(var Message: TWMActivate);
begin
  // vista fix
  if (Message.Active = WA_ACTIVE) and not IsWindowEnabled(Handle) then
  begin
    SetActiveWindow(Application.Handle);
    Message.Result := 0;
  end else
    inherited;
end;

procedure TMainForm.WMSyscommand(var Message: TWmSysCommand);
begin
  case (Message.CmdType and $FFF0) of
    SC_MINIMIZE:
    begin
      ShowWindow(Handle, SW_MINIMIZE);
      Message.Result := 0;
    end;
    SC_RESTORE:
    begin
      ShowWindow(Handle, SW_RESTORE);
      Message.Result := 0;
    end;
  else
    inherited;  
  end;
end;

procedure TMainForm.WordWrapItemClick(Sender: TObject);
var
  CurrentNode: PVirtualNode;
begin
  LogView.BeginUpdate;
  try
    CurrentNode := LogView.GetFirst;
    while CurrentNode <> nil do
    begin
      // Switch between multiline/single line
      LogView.MultiLine[CurrentNode] := WordWrapItem.Checked;
      LogView.ReinitNode(CurrentNode, False);

      // Next
      CurrentNode := LogView.GetNext(CurrentNode);
    end;
  finally
    LogView.EndUpdate;
  end;
end;

procedure TMainForm.AlwaysOnTopButtonClick(Sender: TObject);
const
  HWND_STYLE: array[Boolean] of HWND = (HWND_NOTOPMOST, HWND_TOPMOST);
begin
  // We need to update both this form's and the rule form's topmost status,
  // otherwise, for some reason, the rule form will no longer be topmost
  // to the main form after we switched this feature on and off once.
  SetWindowPos(Handle, HWND_STYLE[AlwaysOnTopButton.Checked], Left, Top,
    Width, Height, SWP_DRAWFRAME or SWP_NOMOVE or SWP_NOSIZE);
  SetWindowPos(RulesForm.Handle, HWND_TOPMOST, Left, Top,
    Width, Height, SWP_DRAWFRAME or SWP_NOMOVE or SWP_NOACTIVATE or SWP_NOSIZE);    
end;

initialization
  InitializeCriticalSection(FileChangeEvent_CS);

finalization
  DeleteCriticalSection(FileChangeEvent_CS);

end.
