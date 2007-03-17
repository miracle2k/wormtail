unit MainFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, TB2Dock, TBX, SpTBXItem, TB2Toolbar, TB2Item,
  TB2ExtItems, SpTBXEditors, XPMan, Menus, JclWideStrings, TBXToolPals, ImgList,
  PngImageList, TB2MRU, VirtualTrees, VirtualExplorerTree, TntDialogs,
  TBXExtItems, ExceptionLog, TntClipbrd;

type
  TFileReadThread = class;
  
  TFileChangeEvent = procedure(Sender: TFileReadThread; Data: WideString) of object;

  TFileReadThread = class(TThread)
  private
    FStream: TStream;
    FOnFileChangeEvent: TFileChangeEvent;
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
  end;

  TLogLineNodeData = record
    Line: WideString;
    Added: TDateTime;
    CustomHighlightColor: TColor;
  end;
  PLogLineNodeData = ^TLogLineNodeData;

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
    SpTBXItem1: TSpTBXItem;
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
    ShowDateColumnButton: TSpTBXItem;
    SpTBXSubmenuItem1: TSpTBXSubmenuItem;
    SpTBXItem5: TSpTBXItem;
    SpTBXItem6: TSpTBXItem;
    SpTBXItem7: TSpTBXItem;
    CustomDateFormatEditItem: TSpTBXEditItem;
    SpTBXSeparatorItem3: TSpTBXSeparatorItem;
    SpTBXSubmenuItem2: TSpTBXSubmenuItem;
    SpTBXItem8: TSpTBXItem;
    SpTBXItem9: TSpTBXItem;
    SpTBXItem10: TSpTBXItem;
    SpTBXItem12: TSpTBXItem;
    SpTBXItem13: TSpTBXItem;
    SpTBXSeparatorItem4: TSpTBXSeparatorItem;
    SpTBXEditItem2: TSpTBXEditItem;
    SpTBXSeparatorItem5: TSpTBXSeparatorItem;
    CustomHighlightItem: TSpTBXSubmenuItem;
    CustomHighlightColorItem: TTBXColorPalette;
    SpTBXSeparatorItem6: TSpTBXSeparatorItem;
    SpTBXItem11: TSpTBXItem;
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
    SpTBXItem4: TSpTBXItem;
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
    procedure ShowDateColumnButtonClick(Sender: TObject);
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
    procedure SpTBXItem1Click(Sender: TObject);
    procedure CustomHighlightColorItemChange(Sender: TObject);
    procedure LogViewBeforeItemErase(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; ItemRect: TRect;
      var ItemColor: TColor; var EraseAction: TItemEraseAction);
    procedure LogViewPaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      TextType: TVSTTextType);
    procedure CustomHighlightItemClick(Sender: TObject);
    procedure FilterEditChange(Sender: TObject);
  protected
    procedure EventHandler(Sender: TFileReadThread; Data: WideString);
  private
    FCurrentFilename: WideString;
    procedure SetCurrentFilename(const Value: WideString);
  private
    FWatchThread: TFileReadThread;
    FDateColumnFormat: WideString;
    FDefaultHighlightColor: TColor;
    FLastHighlightColor: TColor;
    FBufferSize: Cardinal;
    procedure SetDateColumnFormat(const Value: WideString);
    procedure SetDefaultHighlightColor(const Value: TColor);
    procedure SetLastHighlightColor(const Value: TColor);
    procedure SetBufferSize(const Value: Cardinal);
  private
    procedure InitializeHintsFromCaption(AParent: TComponent);
  protected
    // Generic
    procedure OpenFile(AFilename: string);
    procedure CloseFile;
    procedure UpdateGUI;
    procedure UpdateStatusLabel;

    // Explorer mode
    function CanOpenSelectedNode: Boolean;
    function SelectedNodeFilename: WideString;

    // Log mode
    procedure SelectionSetCustomColorHighlight(AColor: TColor);
    procedure CleanBuffer;
  protected
    // Set-Accessor takes care of updating caption. Apart from that, best not
    // touch it, use OpenFile() and CloseFile() instead.
    property CurrentFilename: WideString read FCurrentFilename write SetCurrentFilename;
  public
    property DateColumnFormat: WideString read FDateColumnFormat write SetDateColumnFormat;
    property DefaultHighlightColor: TColor read FDefaultHighlightColor write SetDefaultHighlightColor;
    property LastHighlightColor: TColor read FLastHighlightColor write SetLastHighlightColor;
    property BufferSize: Cardinal read FBufferSize write SetBufferSize;
  end;

var
  MainForm: TMainForm;

var
  FileChangeEvent_CS: TRTLCriticalSection;

const
  LineBreakFmt = #13#10;

implementation

uses
  Core, GnuGetText, MPShellUtilities, AboutFormUnit;

{$R *.dfm}

{ Helper functions }

// Get a good color contrast
function GetGrayLevel(const Color: TColor): Integer;
begin
   Result := (77 * (Color and $FF) + 151 * (Color shr 8 and $FF) + 28 *
     (Color shr 16 and $FF)) shr 8;
end;
function GetGoodContrast(const Color: TColor): TColor;
begin
   if GetGrayLevel(Color) < 128 then Result := clWhite
   else Result := clBlack;
end;

{ TFileReadThread }

constructor TFileReadThread.Create(Filename: string);
begin
  inherited Create(True);
  Priority := tpLowest;
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
begin
  // Starting off, jump to the end of the file to monitor changes
  Stream.Position := Stream.Size;

  // Loop until termination
  while not Terminated do
  begin
    try
      // something was added
      // TODO: handle removed, right now we assume that stuff is always added
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
          
          EnterCriticalSection(FileChangeEvent_CS);
          try
            FOnFileChangeEvent(Self, WideString(T));
          finally
            LeaveCriticalSection(FileChangeEvent_CS);
          end;
        end;

        // Save some CPU time, don't overdo it.
        // TODO: read this value from the registry
        Sleep(80);
      end;
    except
      // TODO: how do we handle exceptions?
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
    // close down the thread (and with it the file handle)
    FWatchThread.Free;
    FWatchThread := nil;

    // add the file we just closed to the mru list
    MRUList.Add(CurrentFilename);

    // We no longer have a file opened
    CurrentFilename := '';

    // update the gui
    UpdateGUI;
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
  NewNode: PVirtualNode;
  NewNodeData: PLogLineNodeData;
begin
   LogView.BeginUpdate;
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
       end;
     finally
       Strings.Free;
     end;

    // attempt to cleanup buffer
    CleanBuffer;
     
    // auto scroll to the last node in the tree
    LogView.FocusedNode := LogView.GetLast();
  finally
    LogView.EndUpdate;
  end;

  LogView.ScrollIntoView(LogView.FocusedNode, False);

  // update status / line count
  UpdateStatusLabel;
end;

procedure TMainForm.ExplorerTreeDblClick(Sender: TObject);
begin
  if CanOpenSelectedNode then
    OpenFile(SelectedNodeFilename);
end;

procedure TMainForm.ExplorerTreePopupPopup(Sender: TObject);
begin
  OpenItem.Enabled := CanOpenSelectedNode;
end;

procedure TMainForm.FilterEditChange(Sender: TObject);
var
  Data: PLogLineNodeData;
  CurrentNode: PVirtualNode;
begin
  CurrentNode := LogView.GetFirst;
  while CurrentNode <> nil do
  begin
    // retrieve data and search
    Data := LogView.GetNodeData(CurrentNode);
    LogView.IsVisible[CurrentNode] :=
      (FilterEdit.Text = '') or ((Pos(FilterEdit.Text, Data.Line) > 0));
    // next node
    CurrentNode := LogView.GetNextSibling(CurrentNode);
  end;
  UpdateStatusLabel;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  LogView.NodeDataSize := SizeOf(TLogLineNodeData);

  DateColumnFormat := 'dd.mm. hh:nn:ss:zzz';
  DefaultHighlightColor := clRed;
  LastHighlightColor := DefaultHighlightColor;
  BufferSize := 5;

  TranslateComponent(Self);

  // set the hint property of all toolbar buttons to their caption
  InitializeHintsFromCaption(Self);

  ExplorerTree.Active := True;

  FWatchThread := nil;
  UpdateGUI;

  MRUList.Add('G:\Programme\Xampp\apache\logs\access.log');
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  CloseFile;
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

procedure TMainForm.LogViewGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
  Column: TColumnIndex; TextType: TVSTTextType; var CellText: WideString);
var
  Data: PLogLineNodeData;
begin
  // Free the data associated with the node
  Data := Sender.GetNodeData(Node);
  if Column = 0 then CellText := Data^.Line
  else if Column = 1 then CellText := FormatDateTime(DateColumnFormat, Data^.Added)
  else CellText := '';
end;

procedure TMainForm.LogViewHeaderPopupPopup(Sender: TObject);
begin
  // init popup menu state
  ShowDateColumnButton.Checked := (coVisible in LogView.Header.Columns[1].Options);
  CustomDateFormatEditItem.Text := DateColumnFormat;
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

procedure TMainForm.MRUListClick(Sender: TObject; const Filename: string);
begin
  // Open the path in internal explorer
  ExplorerTree.BrowseTo(Filename, True, True, False, False);

  // Open the file
  OpenFile(Filename);  
end;

procedure TMainForm.OpenFile(AFilename: string);
begin
  // close any existing file, should it exist
  CloseFile;

  // create a new watch thread for the new file
  FWatchThread := TFileReadThread.Create(AFilename);
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

function TMainForm.CanOpenSelectedNode: Boolean;
var
  Selected: TNamespaceArray;
begin
  Selected := ExplorerTree.SelectedToNamespaceArray;
  Result := (High(Selected) = 0) and (not Selected[0].Directory) and
    (Selected[0].FileSystem);
end;

procedure TMainForm.CleanBuffer;
var
  ItemsToDelete: Cardinal;
  I: Integer;
begin
  // If we currently do not have a buffer limit, do nothing
  if BufferSize = 0 then Exit;

  // Determine how many items need to be deleted
  ItemsToDelete := LogView.RootNodeCount - BufferSize;

  // Go a head and delete, starting at the head
  LogView.BeginUpdate;
  try
    for I := 1 to ItemsToDelete do
      LogView.DeleteNode(LogView.GetFirst);
  finally
    LogView.EndUpdate;
  end;
end;

procedure TMainForm.CloseButtonClick(Sender: TObject);
begin
  CloseFile;
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
  // if the color equals the default, auto-reset to clNone
  if AColor = LogView.Color then 
    AColor := clNone;

  // set highlight color for all selected items
  Selection := LogView.GetSortedSelection(False);
  for I := 0 to High(Selection) do
  begin
    NodeData := LogView.GetNodeData(Selection[I]);
    NodeData^.CustomHighlightColor := AColor;
  end;
end;

procedure TMainForm.SetBufferSize(const Value: Cardinal);
begin
  FBufferSize := Value;
end;

procedure TMainForm.SetCurrentFilename(const Value: WideString);
begin
  if FCurrentFilename <> Value then
  begin
    FCurrentFilename := Value;

    // update caption
    if Value = '' then
    begin
      Caption := Appname;
      Application.Title := Appname;
    end else
    begin
      Caption := Appname + ' ['+Value+']';
      Application.Title := Appname + ' ['+ExtractFileName(Value)+']';;
    end;
  end;
end;

procedure TMainForm.SetDateColumnFormat(const Value: WideString);
begin
  FDateColumnFormat := Value;
end;

procedure TMainForm.SetDefaultHighlightColor(const Value: TColor);
begin
  FDefaultHighlightColor := Value;
end;

procedure TMainForm.SetLastHighlightColor(const Value: TColor);
begin
  FLastHighlightColor := Value;
end;

procedure TMainForm.ShowDateColumnButtonClick(Sender: TObject);
var
  NewOptions: TVTColumnOptions;
begin
  NewOptions := LogView.Header.Columns[1].Options;
  if ShowDateColumnButton.Checked then Include(NewOptions, coVisible)
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
  DateColumnFormat := NewText;
end;

procedure TMainForm.CustomHighlightColorItemChange(Sender: TObject);
begin
  SelectionSetCustomColorHighlight(CustomHighlightColorItem.Color);
  // Store this as the last used highlight color
  LastHighlightColor := CustomHighlightColorItem.Color;
end;

procedure TMainForm.CustomHighlightItemClick(Sender: TObject);
begin
  SelectionSetCustomColorHighlight(LastHighlightColor);
end;

procedure TMainForm.SpTBXItem1Click(Sender: TObject);
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
    ShowModal;
    Free;
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
  StatusLabel.Visible := (FileIsOpen = True);
  FilterEdit.Visible := (FileIsOpen = True);
  FilterLabelItem.Visible := (FileIsOpen = True);  
  OpenFileItem.Visible := (FileIsOpen = False);

  UpdateStatusLabel;  
end;

procedure TMainForm.UpdateStatusLabel;
var
  NewCaption: string;
begin
  NewCaption := IntToStr(LogView.RootNodeCount)+' items';
  // if there are hidden nodes
  if (LogView.VisibleCount <> LogView.RootNodeCount) then
    NewCaption := NewCaption + ', '+
      IntToStr(LogView.RootNodeCount-LogView.VisibleCount)+' hidden';
  StatusLabel.Caption := NewCaption;
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
var
  Order: LongWord;
begin
  if AlwaysOnTopButton.Checked then Order := HWND_TOPMOST
  else Order := HWND_NOTOPMOST;
  SetWindowPos(Handle, Order, Left, Top, Width, Height,
    SWP_DRAWFRAME or SWP_NOMOVE or SWP_NOSIZE);
end;

initialization
  InitializeCriticalSection(FileChangeEvent_CS);

finalization
  DeleteCriticalSection(FileChangeEvent_CS);

end.
