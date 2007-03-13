unit MainFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TntStdCtrls, TB2Dock, TBX, SpTBXItem, TB2Toolbar, TB2Item,
  SciLexer, SciLexerMemo, SciLexerMod, TB2ExtItems, SpTBXEditors, XPMan, Menus,
  VirtualTrees, VirtualExplorerTree;

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
    SpTBXEditItem2: TSpTBXEditItem;
    XPManifest: TXPManifest;
    FontDialog: TFontDialog;
    LogViewPopup: TSpTBXPopupMenu;
    SpTBXItem2: TSpTBXItem;
    ExplorerTree: TVirtualExplorerTreeview;
    procedure FormCreate(Sender: TObject);
    procedure AlwaysOnTopButtonClick(Sender: TObject);
    procedure WordWrapItemClick(Sender: TObject);
    procedure SpTBXEditItem2Change(Sender: TObject; const Text: WideString);
    procedure SpTBXItem2Click(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  protected
    procedure EventHandler(Sender: TFileReadThread; Data: WideString);
  private
    FWatchThread: TFileReadThread;
    FHiddenLines: Integer;
  protected
    procedure UpdateStatusLabel;
    procedure CloseFile;
  end;

var
  MainForm: TMainForm;

var
  FileChangeEvent_CS: TRTLCriticalSection;

implementation

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
  Buffer: Pointer;
  T: string;
begin
  Stream.Position := Stream.Size;
  
  while not Terminated do
  begin
    try
      // something was added
      if Stream.Position <> Stream.Size then
      begin
        if Assigned(FOnFileChangeEvent) then
        begin
         // GetMem(Buffer, Stream.Size-Stream.Position);
          SetLength(T, Stream.Size-Stream.Position);
          Stream.ReadBuffer(T[1], Stream.Size-Stream.Position);
          EnterCriticalSection(FileChangeEvent_CS);
          try
            FOnFileChangeEvent(Self, WideString(T));
          finally
            LeaveCriticalSection(FileChangeEvent_CS);
          end;
          Sleep(50);
        end;
      end;
    except
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
  ExplorerTree.Visible := True;
  ExplorerTree.Active := True;
  LogView.Visible := False;
  CloseButton.Visible := False;
  WordWrapItem.Enabled := False;
end;

procedure TMainForm.EventHandler(Sender: TFileReadThread; Data: WideString);
begin
  LogView.ReadOnly := False;
  LogView.AddTextStr(Data);
  LogView.ReadOnly := True;
  LogView.GotoLine(LogView.Lines.Count);

  UpdateStatusLabel;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  ExplorerTree.Visible := False;
  ExplorerTree.Align :=  alClient;

  FWatchThread := TFileReadThread.Create('G:\Programme\Xampp\apache\logs\access.log');
  FWatchThread.OnFileChangeEvent := EventHandler;
  FWatchThread.Resume;

  UpdateStatusLabel;
end;

procedure TMainForm.SpTBXEditItem2Change(Sender: TObject;
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
  CloseFile;
end;

procedure TMainForm.SpTBXItem2Click(Sender: TObject);
begin
  if FontDialog.Execute then
  begin
    LogView.Font.Assign(FontDialog.Font);
  end;
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
    LogView.WordWrap := sciWrapChar
  else
    LogView.WordWrap := sciNoWrap;
end;

procedure TMainForm.AlwaysOnTopButtonClick(Sender: TObject);
var
  Order: Integer;
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
