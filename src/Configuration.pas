unit Configuration;

interface

uses
  Classes, Graphics;

type
  TWormtailSettings = class(TPersistent)
  private
    FMaxBuffer: Cardinal;
    FTimestampColumnFormat: WideString;
    FShowTimestamp: Boolean;
    FFlashTrayIconOnChange: Boolean;
    FListFont: TFont;
    FAutoScroll: Boolean;
    FTopToolbarLargeIcons: Boolean;
    FLeftToolbarLargeIcons: Boolean;
    FDefaultHighlightColor: TColor;
    FAutoTrimBuffer: Boolean;
    FNumberOfLinesPreloaded: Integer;
    FThreadSleepTime: Integer;
    procedure SetAutoScroll(const Value: Boolean);
    procedure SetDefaultHighlightColor(const Value: TColor);
    procedure SetFlashTrayIconOnChange(const Value: Boolean);
    procedure SetLeftToolbarLargeIcons(const Value: Boolean);
    procedure SetListFont(const Value: TFont);
    procedure SetMaxBuffer(const Value: Cardinal);
    procedure SetShowTimestamp(const Value: Boolean);
    procedure SetTimestampColumnFormat(const Value: WideString);
    procedure SetTopToolbarLargeIcons(const Value: Boolean);
    procedure SetAutoTrimBuffer(const Value: Boolean);
    procedure SetNumberOfLinesPreloaded(const Value: Integer);
    procedure SetThreadSleepTime(const Value: Integer);
  published
  public
    constructor Create; virtual;
    destructor Destroy; override;
  published
    property TopToolbarLargeIcons: Boolean read FTopToolbarLargeIcons write SetTopToolbarLargeIcons;
    property LeftToolbarLargeIcons: Boolean read FLeftToolbarLargeIcons write SetLeftToolbarLargeIcons;
    property AutoScroll: Boolean read FAutoScroll write SetAutoScroll;
    property MaxBuffer: Cardinal read FMaxBuffer write SetMaxBuffer;
    property AutoTrimBuffer: Boolean read FAutoTrimBuffer write SetAutoTrimBuffer;
    property DefaultHighlightColor: TColor read FDefaultHighlightColor write SetDefaultHighlightColor;
    property ListFont: TFont read FListFont write SetListFont;
    property ShowTimestamp: Boolean read FShowTimestamp write SetShowTimestamp;
    property TimestampColumnFormat: WideString read FTimestampColumnFormat write SetTimestampColumnFormat;
    property FlashTrayIconOnChange: Boolean read FFlashTrayIconOnChange write SetFlashTrayIconOnChange;
    property NumberOfLinesPreloaded: Integer read FNumberOfLinesPreloaded write SetNumberOfLinesPreloaded;
    property ThreadSleepTime: Integer read FThreadSleepTime write SetThreadSleepTime;
  end;

implementation

uses
  MainFormUnit;

{ TWormtailSettings }

constructor TWormtailSettings.Create;
begin
  FMaxBuffer := 1000;
  FAutoTrimBuffer := True;
  FTimestampColumnFormat := 'dd.mm. hh:nn:ss:zzz';
  FShowTimestamp := True;
  FFlashTrayIconOnChange := True;
  FListFont := TFont.Create;
  FAutoScroll := True;
  FTopToolbarLargeIcons := False;
  FLeftToolbarLargeIcons := False;
  FDefaultHighlightColor := clRed;
  FNumberOfLinesPreloaded := 15;
  FThreadSleepTime := 10;
end;

destructor TWormtailSettings.Destroy;
begin
  FListFont.Free;
  inherited;
end;

procedure TWormtailSettings.SetAutoScroll(const Value: Boolean);
begin
  FAutoScroll := Value;
end;

procedure TWormtailSettings.SetAutoTrimBuffer(const Value: Boolean);
begin
  FAutoTrimBuffer := Value;
end;

procedure TWormtailSettings.SetDefaultHighlightColor(const Value: TColor);
begin
  FDefaultHighlightColor := Value;
end;

procedure TWormtailSettings.SetFlashTrayIconOnChange(const Value: Boolean);
begin
  FFlashTrayIconOnChange := Value;
end;

procedure TWormtailSettings.SetLeftToolbarLargeIcons(const Value: Boolean);
begin
  FLeftToolbarLargeIcons := Value;
end;

procedure TWormtailSettings.SetListFont(const Value: TFont);
begin
  FListFont := Value;
end;

procedure TWormtailSettings.SetMaxBuffer(const Value: Cardinal);
begin
  if FMaxBuffer <> Value then
  begin
    FMaxBuffer := Value;

    // if buffer size was made smaller, remove entries right now
    MainForm.TrimBuffer;
  end;
end;

procedure TWormtailSettings.SetNumberOfLinesPreloaded(const Value: Integer);
begin
  FNumberOfLinesPreloaded := Value;
end;

procedure TWormtailSettings.SetShowTimestamp(const Value: Boolean);
begin
  FShowTimestamp := Value;
end;

procedure TWormtailSettings.SetThreadSleepTime(const Value: Integer);
begin
  FThreadSleepTime := Value;
end;

procedure TWormtailSettings.SetTimestampColumnFormat(const Value: WideString);
begin
  FTimestampColumnFormat := Value;
  MainForm.LogView.Invalidate;
end;

procedure TWormtailSettings.SetTopToolbarLargeIcons(const Value: Boolean);
begin
  FTopToolbarLargeIcons := Value;
end;

end.
