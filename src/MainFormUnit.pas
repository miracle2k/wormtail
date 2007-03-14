unit MainFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, TB2Dock, TBX, SpTBXItem, TB2Toolbar, TB2Item,
  SciLexer, SciLexerMemo, SciLexerMod, TB2ExtItems, SpTBXEditors, XPMan, Menus,
  VirtualTrees, VirtualExplorerTree, ImgList, PngImageList, TB2MRU, SciSupport;

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

  TMainForm = class(TForm)
    LeftDock: TSpTBXDock;
    LeftToolbar: TSpTBXToolbar;
    TopDock: TTBXDock;
    StatusToolbar: TSpTBXToolbar;
    StatusLabel: TSpTBXLabelItem;
    LogView: TScintilla;
    AlwaysOnTopButton: TSpTBXItem;
    WordWrapItem: TSpTBXItem;
    SpTBXRightAlignSpacerItem1: TSpTBXRightAlignSpacerItem;
    CloseButton: TSpTBXItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    FilterEdit: TSpTBXEditItem;
    XPManifest: TXPManifest;
    FontDialog: TFontDialog;
    LogViewPopup: TSpTBXPopupMenu;
    SpTBXItem2: TSpTBXItem;
    ExplorerTree: TVirtualExplorerTreeview;
    SmallImages: TPngImageList;
    LargeImages: TPngImageList;
    SpTBXSeparatorItem2: TSpTBXSeparatorItem;
    SpTBXItem1: TSpTBXItem;
    OpenFileItem: TSpTBXSubmenuItem;
    TBMRUListItem1: TTBMRUListItem;
    SpTBXItem3: TSpTBXItem;
    SpTBXRightAlignSpacerItem2: TSpTBXRightAlignSpacerItem;
    procedure FormCreate(Sender: TObject);
    procedure AlwaysOnTopButtonClick(Sender: TObject);
    procedure WordWrapItemClick(Sender: TObject);
    procedure FilterEditChange(Sender: TObject; const Text: WideString);
    procedure SpTBXItem2Click(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure SpTBXItem1Click(Sender: TObject);
    procedure OpenFileItemClick(Sender: TObject);
    procedure ExplorerTreeDblClick(Sender: TObject);
  protected
    procedure EventHandler(Sender: TFileReadThread; Data: WideString);
  private
    FWatchThread: TFileReadThread;
    // caches the number of lines currently hidden. updated everytime the
    // filter/search is changed.
    FHiddenLines: Integer;
    FCurrentFilename: string;
    procedure SetCurrentFilename(const Value: string);
  protected
    procedure OpenFile(AFilename: string);
    procedure CloseFile;  
    procedure UpdateGUI;
    procedure UpdateStatusLabel;
  public
    // Changing this actually opens a file! 
    property CurrentFilename: string read FCurrentFilename write SetCurrentFilename;
  end;

var
  MainForm: TMainForm;

var
  FileChangeEvent_CS: TRTLCriticalSection;

implementation

uses
  Core, MPShellUtilities;

{$R *.dfm}

{ TFileReadThread }

constructor TFileReadThread.Create(Filename: string);
begin
  inherited Create(True);
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
        Sleep(50);
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
    FWatchThread.Free;
    FWatchThread := nil;
    UpdateGUI;
  end;
end;

procedure TMainForm.EventHandler(Sender: TFileReadThread; Data: WideString);
begin
  LogView.ReadOnly := False;
  LogView.AddTextStr(Data);
  LogView.ReadOnly := True;
  LogView.SPerform(SCI_GOTOLINE, LogView.Lines.Count, 0);  
                 
  UpdateStatusLabel;
end;

procedure TMainForm.ExplorerTreeDblClick(Sender: TObject);
var
  Selected: TNamespaceArray;
begin
  Selected := ExplorerTree.SelectedToNamespaceArray;
  if (High(Selected) = 0) and (not Selected[0].Directory) then
    CurrentFilename := Selected[0].NameForParsing;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  FWatchThread := nil;
  UpdateGUI;
end;

procedure TMainForm.OpenFile(AFilename: string);
begin
  // close any existing file, should it exist
  CloseFile;

  // create a new watch thread for the new file
  FWatchThread := TFileReadThread.Create(AFilename);
  FWatchThread.OnFileChangeEvent := EventHandler;
  FWatchThread.Resume;

  UpdateGUI;
end;

procedure TMainForm.FilterEditChange(Sender: TObject;
  const Text: WideString);
var
  I: Integer;
  HiddenCount: Integer;
begin
  HiddenCount := 0;
  for I := 0 to LogView.Lines.Count - 1 do
  begin
    if (Text <> '') and (not (Pos(Text, LogView.lines[I]) > 0)) then
    begin
      LogView.HideLines(I, I);
      Inc(HiddenCount);
    end
    else
      LogView.ShowLines(I, I);
  end;
  FHiddenLines := HiddenCount;
  UpdateStatusLabel;
end;

procedure TMainForm.CloseButtonClick(Sender: TObject);
begin
  CurrentFilename := '';
end;

procedure TMainForm.SetCurrentFilename(const Value: string);
begin
  if FCurrentFilename <> Value then
  begin
    FCurrentFilename := Value;

    // open new file or close current file, depending on value
    if Value = '' then
      CloseFile
    else begin
      OpenFile(Value);
    end;

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

procedure TMainForm.SpTBXItem1Click(Sender: TObject);
begin
  LogView.Copy;
end;

procedure TMainForm.SpTBXItem2Click(Sender: TObject);
begin
  if FontDialog.Execute then
  begin
    LogView.Font.Assign(FontDialog.Font);
  end;
end;

procedure TMainForm.OpenFileItemClick(Sender: TObject);
begin
 CurrentFilename := 'G:\Programme\Xampp\apache\logs\access.log';
end;

procedure TMainForm.UpdateGUI;
var
  FileIsOpen: Boolean;
begin
  // if a watchthread object exists, we consider being in "file open" mode
  FileIsOpen := FWatchThread <> nil;

  // change visible/enabled properties of GUI elements
  ExplorerTree.Visible := (FileIsOpen = False);
  ExplorerTree.Active := (FileIsOpen = False);
  LogView.Visible := (FileIsOpen = True);
  CloseButton.Visible := (FileIsOpen = True);
  WordWrapItem.Enabled := (FileIsOpen = True);
  StatusLabel.Visible := (FileIsOpen = True);
  FilterEdit.Visible := (FileIsOpen = True);
  OpenFileItem.Visible := (FileIsOpen = False);

  UpdateStatusLabel;  
end;

procedure TMainForm.UpdateStatusLabel;
var
  NewCaption: string;
begin
  NewCaption := IntToStr(LogView.Lines.Count)+' items';
  if FHiddenLines <> 0 then
    NewCaption := NewCaption + ', '+IntToStr(FHiddenLines)+' hidden';
  StatusLabel.Caption := NewCaption;
end;

procedure TMainForm.WordWrapItemClick(Sender: TObject);
begin
  if WordWrapItem.Checked then
    LogView.WordWrap := sciWrap
  else
    LogView.WordWrap := sciNoWrap;
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
