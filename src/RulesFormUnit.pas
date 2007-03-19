unit RulesFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VirtualTrees, Menus, TB2Item, TBX, SpTBXItem, ActiveX;

type
  // Defines a filter rule
  TLogRule = record
    Regex: string;
    HighlightColor: TColor;
    Inverse: Boolean;
    Enabled: Boolean;
  end;
  PLogRule = ^TLogRule;

  // Form class
  TRulesForm = class(TForm)
    RulesList: TVirtualDrawTree;
    RulesPopup: TSpTBXPopupMenu;
    SpTBXItem1: TSpTBXItem;
    SpTBXItem2: TSpTBXItem;
    SpTBXItem3: TSpTBXItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SpTBXItem1Click(Sender: TObject);
    procedure RulesListGetText(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType; var CellText: WideString);
    procedure RulesListDragOver(Sender: TBaseVirtualTree; Source: TObject;
      Shift: TShiftState; State: TDragState; Pt: TPoint; Mode: TDropMode;
      var Effect: Integer; var Accept: Boolean);
    procedure RulesListDragDrop(Sender: TBaseVirtualTree; Source: TObject;
      DataObject: IDataObject; Formats: TFormatArray; Shift: TShiftState;
      Pt: TPoint; var Effect: Integer; Mode: TDropMode);
    procedure RulesListDragAllowed(Sender: TBaseVirtualTree; Node: PVirtualNode;
      Column: TColumnIndex; var Allowed: Boolean);
    procedure RulesListCollapsing(Sender: TBaseVirtualTree; Node: PVirtualNode;
      var Allowed: Boolean);
    procedure RulesListDrawNode(Sender: TBaseVirtualTree;
      const PaintInfo: TVTPaintInfo);
    procedure RulesListGetNodeWidth(Sender: TBaseVirtualTree;
      HintCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
      var NodeWidth: Integer);
  private
  private
  protected
  public
    procedure ClearRules;
    function NewRule(ParentNode: PVirtualNode = nil): PLogRule;
  public
  end;

var
  RulesForm: TRulesForm;

implementation

uses
  GnuGetText, VistaCompat, RulePropertiesFormUnit;

{$R *.dfm}

procedure TRulesForm.ClearRules;
begin
end;

procedure TRulesForm.FormCreate(Sender: TObject);
begin
  // Use font setting of os (mainly intended for new vista font)
  SetDesktopIconFonts(Self.Font);

  // Localize
  TranslateComponent(Self);

  // Init Virtual Treeview
  RulesList.NodeDataSize := SizeOf(TLogRule);
end;

procedure TRulesForm.FormDeactivate(Sender: TObject);
begin
  // Try to have this always on top of the main form, even if the main form is
  // set to "top most". Please note the SWP_NOACTIVATE flag - we only want to
  // adjust the order.
  if Visible then
    SetWindowPos(RulesForm.Handle, HWND_TOPMOST, Left, Top,
      Width, Height, SWP_DRAWFRAME or SWP_NOACTIVATE or SWP_NOMOVE or SWP_NOSIZE);
end;

procedure TRulesForm.FormDestroy(Sender: TObject);
begin
  ClearRules;
end;

procedure TRulesForm.FormShow(Sender: TObject);
begin
  // Try to have this always on top of the main form
  SetWindowPos(RulesForm.Handle, HWND_TOPMOST, Left, Top,
    Width, Height, SWP_DRAWFRAME or SWP_NOMOVE or SWP_NOSIZE);  
end;

function TRulesForm.NewRule(ParentNode: PVirtualNode = nil): PLogRule;
var
  NewNode: PVirtualNode;
begin
  NewNode := RulesList.AddChild(ParentNode);
  RulesList.ReinitNode(NewNode, False);
  Result := RulesList.GetNodeData(NewNode);
end;

procedure TRulesForm.RulesListCollapsing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var Allowed: Boolean);
begin
//  Allowed := Sender.NodeParent[Node] <> nil;
  Allowed := False;
end;

procedure TRulesForm.RulesListDragAllowed(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  Allowed := True;
end;

procedure TRulesForm.RulesListDragDrop(Sender: TBaseVirtualTree;
  Source: TObject; DataObject: IDataObject; Formats: TFormatArray;
  Shift: TShiftState; Pt: TPoint; var Effect: Integer; Mode: TDropMode);
var
  AttachMode: TVTNodeAttachMode;
begin
   // Translate the drop position into an node attach mode
  case Mode of
    dmAbove:
      AttachMode := amInsertBefore;
    dmOnNode:
      AttachMode := amAddChildLast;
    dmBelow:
      AttachMode := amInsertAfter;
  else
    AttachMode := amNowhere;
  end;

  // Always copy
  Effect := DROPEFFECT_MOVE;

  // Process action
  if AttachMode <> amNowhere then
  begin
    Sender.ProcessDrop(DataObject, Sender.DropTargetNode, Effect, AttachMode);
    Sender.Expanded[Sender.DropTargetNode] := True;
  end;
end;

procedure TRulesForm.RulesListDragOver(Sender: TBaseVirtualTree;
  Source: TObject; Shift: TShiftState; State: TDragState; Pt: TPoint;
  Mode: TDropMode; var Effect: Integer; var Accept: Boolean);
begin
  Accept := (Source = Sender) and (Mode <> dmNowhere);
end;

procedure TRulesForm.RulesListDrawNode(Sender: TBaseVirtualTree;
  const PaintInfo: TVTPaintInfo);
var
  Data: PLogRule;
  R, B: TRect;
  S: string;
const
  BoxMargin = 3;
begin   
  with Sender as TVirtualDrawTree, PaintInfo do
  begin
    // get node data
    Data := Sender.GetNodeData(Node);

    // choose a text color
    if (Column = FocusedColumn) and (Node = FocusedNode) then
      Canvas.Font.Color := clHighlightText
    else
      Canvas.Font.Color := clWindowText;
      
    // Modify content rect for margin
    R := ContentRect;
    InflateRect(R, -TextMargin, 0);
    Dec(R.Right);
    Dec(R.Bottom);

    // paint the rectangle indicating the highlight color of that rule
    B := R; InflateRect(B, -BoxMargin, -BoxMargin);
    B.Right := B.Left + (B.Bottom-B.Top);
    Inc(B.Top); Inc(B.Bottom);
    Canvas.Brush.Color := Data^.HighlightColor;
    Canvas.Pen.Style := psClear;
    Canvas.Rectangle(B);

    // move content rect to the right
    R.Left := B.Right+BoxMargin;

    // shorten text if necessary
    S := Data^.Regex;
    with R do
      if (Canvas.TextWidth(S) > (Right - Left)) then
        S := ShortenString(Canvas.Handle, S, Right - Left, False);
    // paint via win api (so much more easy than TextOut(), plus, supports unicode)
    SetBKMode(Canvas.Handle, TRANSPARENT);
    DrawText(Canvas.Handle, PChar(S), Length(S),
      R, DT_TOP or DT_LEFT or DT_VCENTER or DT_SINGLELINE);
  end;
end;

procedure TRulesForm.RulesListGetNodeWidth(Sender: TBaseVirtualTree;
  HintCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  var NodeWidth: Integer);
begin
  // full width for all nodes
  NodeWidth := RulesList.ClientWidth - RulesList.Margin;
end;

procedure TRulesForm.RulesListGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  NodeData: PLogRule;
begin
  NodeData := RulesList.GetNodeData(Node);
  CellText := NodeData^.Regex;
end;

procedure TRulesForm.SpTBXItem1Click(Sender: TObject);
begin
  with TRulePropertiesForm.Create(Self) do
  begin
    if ShowModal = mrOk then
      with NewRule(RulesList.NodeParent[RulesList.GetFirstSelected])^ do
      begin
        Enabled := True;
        Inverse := InverseCheckbox.Checked;
        Regex := RegexEdit.Text;
        HighlightColor := HighlightColorPicker.SelectedColor;
      end;
    Free;
  end;
end;

end.
