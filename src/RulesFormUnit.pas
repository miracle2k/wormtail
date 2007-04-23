unit RulesFormUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VirtualTrees, Menus, TB2Item, TBX, SpTBXItem, ActiveX,
  JvComponentBase, JvFormPlacement;

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
    NewRuleItem: TSpTBXItem;
    DeleteRuleItem: TSpTBXItem;
    EditRuleItem: TSpTBXItem;
    SpTBXSeparatorItem1: TSpTBXSeparatorItem;
    ReapplyToBufferItem: TSpTBXSubmenuItem;
    ReapplyThisRuleItem: TSpTBXItem;
    ReapplyAllRulesItem: TSpTBXItem;
    SpTBXSeparatorItem2: TSpTBXSeparatorItem;
    ClearAllItem: TSpTBXItem;
    SpTBXSeparatorItem3: TSpTBXSeparatorItem;
    RuleEnabledItem: TSpTBXItem;
    FormStorage: TJvFormStorage;
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NewRuleItemClick(Sender: TObject);
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
    procedure ClearAllItemClick(Sender: TObject);
    procedure RulesPopupPopup(Sender: TObject);
    procedure ReapplyAllRulesItemClick(Sender: TObject);
    procedure ReapplyThisRuleItemClick(Sender: TObject);
    procedure DeleteRuleItemClick(Sender: TObject);
    procedure EditRuleItemClick(Sender: TObject);
    procedure RuleEnabledItemClick(Sender: TObject);
    procedure RulesListDblClick(Sender: TObject);
    procedure FormHide(Sender: TObject);
  private
  private
  protected
  public
    function NewRule(ParentNode: PVirtualNode = nil): PLogRule;
  public
  end;

var
  RulesForm: TRulesForm;

implementation

uses
  GnuGetText,
  TaskDialog,
  Core, VistaCompat, RulePropertiesFormUnit, MainFormUnit;

{$R *.dfm}

procedure TRulesForm.DeleteRuleItemClick(Sender: TObject);
begin
  with TAdvTaskDialog.Create(Self) do
  begin
    DialogPosition := dpOwnerFormCenter;
    Title := _('Please confirm');
    Icon := tiQuestion;
    CommonButtons := [cbYes, cbNo];
    Instruction := _('Are you sure you want to delete the selected rule and all it''s subnodes?');
    Content := _('This action cannot be undone.');
    if Execute = ID_YES then
      RulesList.DeleteSelectedNodes;
  end;
end;

procedure TRulesForm.EditRuleItemClick(Sender: TObject);
var
  NodeData: PLogRule;
begin
  // Make sure we have a selection
  if RulesList.SelectedCount <= 0 then Exit; 

  // Get the node data - only one can be selected
  NodeData := RulesList.GetNodeData(RulesList.GetFirstSelected);
  // show the dialog
  with TRulePropertiesForm.Create(Self) do
  begin
    // apply current values to UI
    InverseCheckbox.Checked := NodeData.Inverse;
    RegexEdit.Text := NodeData.Regex;
    HighlightColor := NodeData.HighlightColor;
    // ask user for changes
    PopupParent := Self;  // Vista fix
    if ShowModal = mrOk then
    begin
      NodeData.Inverse := InverseCheckbox.Checked;
      NodeData.Regex := RegexEdit.Text;
      NodeData.HighlightColor := HighlightColor;
    end;
    Free;
  end;
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

procedure TRulesForm.FormHide(Sender: TObject);
begin
  // Work around JVCL bug: position is loaded in onShow, but not stored when
  // form is hidden.
  // TODO 1 -cworkaround : check for fix in official sources
  // Looks like this is already fixed, see
  //   http://homepages.borland.com/jedi/issuetracker/view.php?id=4002
  FormStorage.SaveFormPlacement;
end;

procedure TRulesForm.FormShow(Sender: TObject);
begin
  // Try to have this always on top of the main form
  SetWindowPos(RulesForm.Handle, HWND_TOPMOST, Left, Top,
    Width, Height, SWP_DRAWFRAME or SWP_NOMOVE or SWP_NOSIZE);

  // Activate form storage manually when the form is shown; reason: there is
  // currently a bug in the jvcl - if the form is never ever shown and has no
  // fixed default values (e.g. only set via Position/ScreenCenter etc). the
  // null values are written to the registry on exit
  // TODO 1 -cworkaround : check for fix in official sources
  FormStorage.Active := True;
  FormStorage.RestoreFormPlacement;    
end;

function TRulesForm.NewRule(ParentNode: PVirtualNode = nil): PLogRule;
var
  NewNode: PVirtualNode;
begin
  NewNode := RulesList.AddChild(ParentNode);
  RulesList.ReinitNode(NewNode, False);
  Result := RulesList.GetNodeData(NewNode);
end;

procedure TRulesForm.ReapplyAllRulesItemClick(Sender: TObject);
begin
  MainForm.ReapplyRulesToBuffer;
end;

procedure TRulesForm.ReapplyThisRuleItemClick(Sender: TObject);
begin
  // We only allow one selection at this time
  MainForm.ReapplyRulesToBuffer(RulesList.GetFirstSelected);
end;

procedure TRulesForm.RuleEnabledItemClick(Sender: TObject);
var
  NodeData: PLogRule;
begin
  // We only allow one selection at this time
  NodeData := RulesList.GetNodeData(RulesList.GetFirstSelected);
  NodeData^.Enabled := RuleEnabledItem.Checked;
  // Repaint
  RulesList.InvalidateNode(RulesList.GetFirstSelected)
end;

procedure TRulesForm.RulesListCollapsing(Sender: TBaseVirtualTree;
  Node: PVirtualNode; var Allowed: Boolean);
begin
  // Do not allow any collapsing at all
  Allowed := False;
end;

procedure TRulesForm.RulesListDblClick(Sender: TObject);
begin
  // Make sure we have a selection
  if RulesList.SelectedCount > 0 then EditRuleItemClick(Sender);
end;

procedure TRulesForm.RulesListDragAllowed(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; var Allowed: Boolean);
begin
  // Always allo drag&drop
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
    begin
      if Data.Enabled then Canvas.Font.Color := clHighlightText
      else Canvas.Font.Color := clSilver;
    end else
    begin
      if Data.Enabled then Canvas.Font.Color := clWindowText
      else Canvas.Font.Color := clGray;
    end;

    // if this is a disabled node, use italic text
    if not Data.Enabled then
      Canvas.Font.Style := Canvas.Font.Style + [fsItalic]
    else
      Canvas.Font.Style := Canvas.Font.Style - [fsItalic];

    // Modify content rect for margin
    R := ContentRect;
    InflateRect(R, -TextMargin, 0);
    Dec(R.Right);
    Dec(R.Bottom);

    // paint the rectangle indicating the highlight color of that rule
    B := R; InflateRect(B, -BoxMargin, -BoxMargin);
    B.Right := B.Left + (B.Bottom-B.Top);
    Inc(B.Top); Inc(B.Bottom);
    with Canvas do begin
      Brush.Color := Data^.HighlightColor;
      if Brush.Color = clNone then Brush.Style := bsDiagCross
      else Brush.Style := bsSolid;
      Pen.Style := psSolid;
      Pen.Color := clBlack;
      Pen.Width := 1;
      Rectangle(B);
      // reset brush & pen
      Brush.Style := bsClear;
      Pen.Style := psClear;
    end;

    // move content rect to the right
    R.Left := B.Right+BoxMargin;

    // paint via win api (so much more easy than TextOut(), plus, supports unicode)
    S := Data^.Regex;
    SetBKMode(Canvas.Handle, TRANSPARENT);
    DrawText(Canvas.Handle, PChar(S), Length(S),
      R, DT_TOP or DT_LEFT or DT_VCENTER or DT_SINGLELINE);
  end;
end;

procedure TRulesForm.RulesListGetNodeWidth(Sender: TBaseVirtualTree;
  HintCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  var NodeWidth: Integer);
var
  Data: PLogRule;  
begin
  // get node data
  Data := Sender.GetNodeData(Node);

  // calculate node width:
  //  # text width +
  //  # text margin on left and right
  //  # the color indicator box (width = height)
  with RulesList do
    NodeWidth := Canvas.TextWidth(Data.Regex) + 2*TextMargin + Integer(NodeHeight[Node]);
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

procedure TRulesForm.RulesPopupPopup(Sender: TObject);
var
  NodeData: PLogRule;
begin
  ClearAllItem.Enabled := RulesList.RootNodeCount > 0;
  ReapplyToBufferItem.Enabled := RulesList.RootNodeCount > 0;
  ReapplyThisRuleItem.Enabled := RulesList.SelectedCount = 1;
  EditRuleItem.Enabled := RulesList.SelectedCount = 1;
  DeleteRuleItem.Enabled := RulesList.SelectedCount > 0;
  // "rule enabled" item needs access to the node data for current state
  RuleEnabledItem.Visible := RulesList.SelectedCount = 1;
  if RulesList.SelectedCount > 0 then
  begin
    NodeData := RulesList.GetNodeData(RulesList.GetFirstSelected);
    RuleEnabledItem.Checked := NodeData.Enabled;
  end;
end;

procedure TRulesForm.NewRuleItemClick(Sender: TObject);
var
  NodeData: PLogRule;
begin
  with TRulePropertiesForm.Create(Self) do
  begin
    HighlightColor := clNone; // JVCL color picker control has a bug, need this to workaround.
                              // see TRulePropertiesForm.SetHighlightColor for more details
    PopupParent := Self;  // Vista fix
    if ShowModal = mrOk then
    begin
      NodeData := NewRule(RulesList.NodeParent[RulesList.GetFirstSelected]);
      NodeData.Enabled := True;
      NodeData.Inverse := InverseCheckbox.Checked;
      NodeData.Regex := RegexEdit.Text;
      NodeData.HighlightColor := HighlightColor;
    end;
    Free;
  end;
end;

procedure TRulesForm.ClearAllItemClick(Sender: TObject);
begin
  with TAdvTaskDialog.Create(Self) do
  begin
    DialogPosition := dpOwnerFormCenter;
    Title := _('Please confirm');
    Icon := tiWarning;
    CommonButtons := [cbYes, cbNo];
    Instruction := _('Are you sure you want to delete ALL rules?');
    Content := _('This action cannot be undone.');
    if Execute = ID_YES then
      RulesList.Clear;
  end;
end;

end.
