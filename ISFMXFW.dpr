library ISFMXFW;

{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

uses
  ExportFunctions,
  FMX.Forms,FMX.Graphics,FMX.PlatForm.Win,FMX.Types,FMX.Dialogs,FMX.Objects,
  FMX.Edit,FMX.Controls,FMX.StdCtrls,FMX.Effects,FMX.Styles.Objects,FMX.Memo,
  FMX.Layouts,FMX.ListBox,FMX.Filter.Effects,FMX.Ani,
  System.SysUtils,System.Classes,System.UITypes,System.Win.Taskbar,System.Win.ComObj,
  WinApi.Windows,WinApi.Messages,WinApi.ShellApi;

 {$SETPEFLAGS IMAGE_FILE_DLL}

{$R *.res}

type
  TFForm = class(TInterfacedObject, FForm)
    DefaultForm: TForm;
    DefaultParent: HWND;
    StyledForm: TStyleBook;
  public
   function FCreate(WParent : HWND) : TForm; stdcall;
   procedure Color(Color : Integer); stdcall;
   procedure LoadStyleFromFile(Stylefilename : string); stdcall;
   function Handle : TFMXObject ;stdcall;
   function HWND : HWND; stdcall;
  end;

type
  TFRectangle = class(TInterfacedObject, FRectangle)
    ControlRectangle: TRectangle;
    GaussianBEffect : TGaussianBlurEffect;
  public
    function FCreate(FParent : TFmxObject): TRectangle; stdcall;
    procedure Left(FLeft : Single); stdcall;
    procedure Top(FTop : Single); stdcall;
    procedure Height(FHeight : Single); stdcall;
    procedure Width(FWidth : Single); stdcall;
    procedure Color(AlColor : Integer); stdcall;
    function Handle : TFmxObject; stdcall;
    procedure Opacity (FOpacity : Single); stdcall;
    procedure RotationAngle(FRotationAngle : Single); stdcall;
    procedure SetBounds(XR, YR, WidthR, HeightR: Single); stdcall;
    procedure Align(Al: TAlignLayout); stdcall;
    procedure StrokeSetting(FThickness : Single; OutColor : Integer); stdcall;
    procedure LoadPicture(Image: String; WrapMode: TWrapMode); stdcall;
    procedure CornerStyle(XRadi, YRadi: Single; FCorners : TCorners; CornerType: TCornerType); stdcall;
    procedure Enabled(FEnabled : Boolean); stdcall;
    procedure Visible(Visible : Boolean); stdcall;
    procedure OnClick(Event: TNotifyEvent); stdcall;
    procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
    procedure AnimateColor(FColorID : TColorID;AlColor : Integer;FDuration : Single); stdcall;
    procedure OnMouseDown(Event: TMouseEvent); stdcall;
    procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
    procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
    procedure OnMouseUp(Event: TMouseEvent); stdcall;
  end;

type
  TFPie = class(TInterfacedObject, FPie)
    ControlPie: TPie;
  public
    function FCreate(FParent : TFmxObject): TPie; stdcall;
    procedure Left(FLeft : Single); stdcall;
    procedure Top(FTop : Single); stdcall;
    procedure Height(FHeight : Single); stdcall;
    procedure Width(FWidth : Single); stdcall;
    procedure Color(AlColor : Integer); stdcall;
    function Handle : TFmxObject; stdcall;
    procedure Opacity (FOpacity : Single); stdcall;
    procedure RotationAngle(FRotationAngle : Single); stdcall;
    procedure SetBounds(XR, YR, WidthR, HeightR: Single); stdcall;
    procedure Align(Al: TAlignLayout); stdcall;
    procedure Angle(SAngle, EAngle: Single); stdcall;
    procedure StrokeSetting(FThickness : Single; OutColor : Integer); stdcall;
    procedure Visible(Visible : Boolean); stdcall;
    procedure OnClick(Event: TNotifyEvent); stdcall;
    procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
    procedure AnimateColor(FColorID : TColorID;AlColor : Integer;FDuration : Single); stdcall;
    procedure OnMouseDown(Event: TMouseEvent); stdcall;
    procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
    procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
    procedure OnMouseUp(Event: TMouseEvent); stdcall;
  end;

type
 TFCircle =  class(TInterfacedObject, FCircle)
    ControlCircle: TCircle;
  public
    function FCreate(FParent : TFmxObject): TCircle; stdcall;
    procedure Left(FLeft : Single); stdcall;
    procedure Top(FTop : Single); stdcall;
    procedure Height(FHeight : Single); stdcall;
    procedure Width(FWidth : Single); stdcall;
    procedure Color(AlColor : Integer); stdcall;
    function Handle : TFmxObject; stdcall;
    procedure Opacity (FOpacity : Single); stdcall;
    procedure SetBounds(XR, YR, WidthR, HeightR: Single); stdcall;
    procedure Align(Al: TAlignLayout); stdcall;
    procedure LoadPicture(Image: String; WrapMode: TWrapMode); stdcall;
    procedure StrokeSetting(FThickness : Single; OutColor : Integer); stdcall;
    procedure Enabled(FEnabled : Boolean); stdcall;
    procedure Visible(Visible : Boolean); stdcall;
    procedure OnClick(Event: TNotifyEvent); stdcall;
    procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
    procedure AnimateColor(FColorID : TColorID;AlColor : Integer;FDuration : Single); stdcall;
    procedure OnMouseDown(Event: TMouseEvent); stdcall;
    procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
    procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
    procedure OnMouseUp(Event: TMouseEvent); stdcall;
  end;

type
  TFArc = class(TInterfacedObject, FArc)
    ControlArc: TArc;
  public
    function FCreate(FParent : TFmxObject): TArc; stdcall;
    procedure Left(FLeft : Single); stdcall;
    procedure Top(FTop : Single); stdcall;
    procedure Height(FHeight : Single); stdcall;
    procedure Width(FWidth : Single); stdcall;
    procedure Color(AlColor : Integer); stdcall;
    function Handle : TFmxObject; stdcall;
    procedure Opacity (FOpacity : Single); stdcall;
    procedure RotationAngle(FRotationAngle : Single); stdcall;
    procedure SetBounds(XR, YR, WidthR, HeightR: Single); stdcall;
    procedure Align(Al: TAlignLayout); stdcall;
    procedure Angle(SAngle, EAngle: Single); stdcall;
    procedure StrokeSetting(FThickness: Single; CapStyle : TStrokeCap;OutColor: Integer); stdcall;
    procedure Enabled(FEnabled : Boolean); stdcall;
    procedure Visible(Visible : Boolean); stdcall;
    procedure OnClick(Event: TNotifyEvent); stdcall;
    procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
    procedure AnimateColor(FColorID : TColorID;AlColor : Integer;FDuration : Single); stdcall;
    procedure OnMouseDown(Event: TMouseEvent); stdcall;
    procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
    procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
    procedure OnMouseUp(Event: TMouseEvent); stdcall;
  end;

type
  TFButton = class(TInterfacedObject, FButton)
    ControlButton: TButton;
  public
    function FCreate(FParent : TFmxObject): TButton; stdcall;
    procedure Left(FLeft : Single); stdcall;
    procedure Top(FTop : Single); stdcall;
    procedure Height(FHeight : Single); stdcall;
    procedure Width(FWidth : Single); stdcall;
    procedure Opacity (FOpacity : Single); stdcall;
    procedure RotationAngle(FRotationAngle : Single); stdcall;
    procedure Text(FText : string); stdcall;
    procedure SetBounds(XR, YR, WidthR, HeightR: Single); stdcall;
    procedure Align(Al: TAlignLayout); stdcall;
    procedure SetHint(FText : String); stdcall;
    procedure Enabled(Enabled: Boolean); stdcall;
    procedure Visible(Visible: Boolean); stdcall;
    procedure OnClick(Event: TNotifyEvent); stdcall;
    procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
    procedure OnMouseDown(Event: TMouseEvent); stdcall;
    procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
    procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
    procedure OnMouseUp(Event: TMouseEvent); stdcall;
  end;

type
  TFLabel = class(TInterfacedObject, FLabel)
    ControlLabel: TLabel;
  public
    function FCreate(FParent : TFmxObject) : TLabel; stdcall;
    procedure Left(FLeft : Single); stdcall;
    procedure Top(FTop : Single); stdcall;
    procedure Height(FHeight : Single); stdcall;
    procedure Width(FWidth : Single); stdcall;
    procedure Color(AlColor : Integer); stdcall;
    procedure Opacity (FOpacity : Single); stdcall;
    procedure RotationAngle(FRotationAngle : Single); stdcall;
    procedure Text(FText : string); stdcall;
    procedure SetBounds(XR, YR, WidthR, HeightR: Single); stdcall;
    procedure AutoSize(FAutoSize : Boolean); stdcall;
    procedure Align(Al: TAlignLayout); stdcall;
    procedure SetHint(FText : String); stdcall;
    procedure FontSetting(FontName: string; FontSize, Color: Integer); stdcall;
    procedure TextSetting(FWordWrap : Boolean; FHorzAlign, FVertAlign  : TTextAlign); stdcall;
    procedure Enabled(FEnabled: Boolean); stdcall;
    procedure Visible(Visible: Boolean); stdcall;
    procedure OnClick(Event: TNotifyEvent); stdcall;
    procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
    procedure OnMouseDown(Event: TMouseEvent); stdcall;
    procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
    procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
    procedure OnMouseUp(Event: TMouseEvent); stdcall;
  end;

type
 TFEdit = class(TInterfacedObject, FEdit)
    ControlEdit : TEdit;
 public
   function FCreate(FParent : TFmxObject) : TEdit; stdcall;
   procedure Left(FLeft : Single); stdcall;
   procedure Top(FTop : Single); stdcall;
   procedure Height(FHeight : Single); stdcall;
   procedure Width(FWidth : Single); stdcall;
   procedure Opacity (FOpacity : Single); stdcall;
   procedure RotationAngle(FRotationAngle : Single); stdcall;
   procedure Text(FText : string); stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure SetHint(FText : String); stdcall;
   procedure FontSetting(FontName : string; FontSize, Color : Integer); stdcall;
   procedure AddSearchButton(OnClick : TNotifyEvent); stdcall;
   procedure AddPasswordButton; stdcall;
   procedure Enabled(Enabled: Boolean); stdcall;
   procedure Visible(Visible: Boolean); stdcall;
   procedure OnClick(Event: TNotifyEvent); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
   procedure OnChange(Event: TNotifyEvent); stdcall;
   procedure OnMouseDown(Event: TMouseEvent); stdcall;
   procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
   procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
   procedure OnMouseUp(Event: TMouseEvent); stdcall;
 end;

type
 TFSwitch = class(TInterfacedObject, FSwitch)
    ControlSwitch : TSwitch;
 public
   function FCreate(FParent : TFmxObject; IsChecked : Boolean) : TSwitch; stdcall;
   procedure Left(FLeft : Single); stdcall;
   procedure Top(FTop : Single); stdcall;
   procedure Height(FHeight : Single); stdcall;
   procedure Width(FWidth : Single); stdcall;
   procedure Opacity (FOpacity : Single); stdcall;
   procedure RotationAngle(FRotationAngle : Single); stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure SetHint(FText : String); stdcall;
   function ISSwitchedOn:Boolean; stdcall;
   procedure Enabled(Enabled: Boolean); stdcall;
   procedure Visible(Visible: Boolean); stdcall;
   procedure OnClick(Event: TNotifyEvent); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
   procedure OnSwitch(Event: TNotifyEvent); stdcall;
   procedure OnMouseDown(Event: TMouseEvent); stdcall;
   procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
   procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
   procedure OnMouseUp(Event: TMouseEvent); stdcall;
 end;

type
 TFCheckbox = class(TInterfacedObject, FCheckBox)
    ControlCheckbox : TCheckBox;
 public
   function FCreate(FParent : TFmxObject; Checked : Boolean; Text :string) : TCheckBox; stdcall;
   procedure Left(FLeft : Single); stdcall;
   procedure Top(FTop : Single); stdcall;
   procedure Height(FHeight : Single); stdcall;
   procedure Width(FWidth : Single); stdcall;
   procedure Opacity (FOpacity : Single); stdcall;
   procedure RotationAngle(FRotationAngle : Single); stdcall;
   function ISChecked:Boolean; stdcall;
   procedure SetChecked(Checked : Boolean); stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure FontSetting(FontName : string; FontSize, FontColor : Integer); stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure SetHint(FText : String); stdcall;
   procedure Enabled(Enabled: Boolean); stdcall;
   procedure Visible(Visible: Boolean); stdcall;
   procedure OnClick(Event: TNotifyEvent); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
   procedure OnChange(Event: TNotifyEvent); stdcall;
   procedure OnMouseDown(Event: TMouseEvent); stdcall;
   procedure OnMouseEnter(Event: TNotifyEvent); stdcall;
   procedure OnMouseLeave(Event: TNotifyEvent); stdcall;
   procedure OnMouseUp(Event: TMouseEvent); stdcall;
end;

type
 TFMemo= class(TInterfacedObject, FMemo)
    ControlMemo : TMemo;
 public
   function FCreate(FParent : TFmxObject; NoBack : Boolean) : TMemo; stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure SetStrings(Src : TStrings); stdcall;
   procedure AddLine(FText : String); stdcall;
   procedure Clear; stdcall;
   procedure LoadFromfile(filename : string); stdcall;
   procedure FontSetting(FontName : string; FontSize, FontColor : Integer); stdcall;
   procedure Enabled(Enabled: Boolean); stdcall;
   procedure Opacity(Opacity: Single); stdcall;
   procedure Visible(Visible: Boolean); stdcall;
   function LineCount : Integer; stdcall;
   function LineStrings(FIndex : Integer) : String; stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
 private
   procedure ClearBackground(Sender : TObject);
 end;

type
 TFAniIndicator= class(TInterfacedObject, FAniIndicator)
    ControlAniIndicator: TAniIndicator;
 public
   function FCreate(FParent : TFmxObject) : TAniIndicator; stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure Enabled(Enabled: Boolean); stdcall;
   procedure Opacity(Opacity: Single); stdcall;
   procedure Visible(Visible: Boolean); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
 end;

type
 TFLayout= class(TInterfacedObject, FLayout)
    ControlLayout: TLayout;
 public
   function FCreate(FParent : TFmxObject) : TLayout; stdcall;
   function Handle : TFmxObject; stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure Opacity(FOpacity: Single); stdcall;
   procedure Visible(FVisible: Boolean); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
   procedure AnimateOpacity(FOpacity,FDuration: Single; FDelay : Single); stdcall;
 end;

type
 TFScrollBox= class(TInterfacedObject, FScrollBox)
    ControlScrollBox: TScrollBox;
 public
   function FCreate(FParent : TFmxObject) : TScrollBox; stdcall;
   function Handle : TFmxObject; stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure Opacity(FOpacity: Single); stdcall;
   procedure Visible(FVisible: Boolean); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
 end;

type
 TFProgressBar= class(TInterfacedObject, FProgressBar)
   ControlProgressBar: TProgressBar;
   public
   function FCreate(FParent : TFmxObject) : TProgressBar; stdcall;
   function Handle : TFmxObject; stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure SetHint(FText : String); stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure Opacity(FOpacity: Single); stdcall;
   procedure Visible(FVisible: Boolean); stdcall;
   procedure Max(FMax : Single); stdcall;
   procedure Min(FMin : Single); stdcall;
   procedure Value(FValue : Single); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
 end;


type
 TFBlur= class(TInterfacedObject, FBlur)
   ControlBlur: TBlurEffect;
   public
   function FCreate(FParent : TFmxObject) : TBlurEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure BlurAmount(FBlurAmount: Single; FDuration : Single; FDelay : Single); stdcall;
 end;

type
 TFGaussianBlur= class(TInterfacedObject, FGaussianBlur)
   ControlGaussianBlur: TGaussianBlurEffect;
   public
   function FCreate(FParent : TFmxObject) : TGaussianBlurEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure BlurAmount(FBlurAmount: Single; FDuration : Single; FDelay : Single); stdcall;
 end;

type
 TFGlow= class(TInterfacedObject, FGlow)
   ControlGlow: TGlowEffect;
   public
   function FCreate(FParent : TFmxObject) : TGlowEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure GlowColor(AlColor: Integer); stdcall;
   procedure GlowAmount(FGlowAmount: Single;FDuration : Single; FDelay : Single); stdcall;
 end;

type
 TFInnerGlow= class(TInterfacedObject, FInnerGlow)
   ControlInnerGlow: TInnerGlowEffect;
   public
   function FCreate(FParent : TFmxObject) : TInnerGlowEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure GlowColor(AlColor: Integer); stdcall;
   procedure GlowAmount(FGlowAmount: Single;FDuration : Single; FDelay : Single); stdcall;
 end;


//Form
function TFForm.FCreate(WParent : HWND): TForm;
var
 cRect: TRect;
begin
  GetWindowRect(WParent, cRect);
  Result := TForm.CreateNew(nil);
  Result.BorderStyle := TFmxFormBorderStyle.None;
  Result.Quality:=TCanvasQuality.HighQuality;
  Result.Position := TFormPosition.Default;
  Result.FormFactor.Devices := [TDeviceKind.Desktop];
  Result.Width := cRect.Width;
  Result.Height := cRect.Height;
  ShowWindow(ApplicationHWND, SW_HIDE);
  SetWindowLong(ApplicationHWND, GWL_EXSTYLE, GetWindowLong(ApplicationHWND,
    GWL_EXSTYLE) and (not WS_EX_APPWINDOW) or WS_EX_TOOLWINDOW);
  Result.Show;
  SetParent(FMXHandleToHWND(Result.Handle),WParent);
  SetWindowLongPTR(FMXHandleToHWND(Result.Handle), GWL_STYLE,WS_CHILD);
  Result.WindowState:=TWindowState.wsMaximized;
  Result.BringToFront;
  DefaultForm := Result;
  DefaultParent := WParent;
end;

function TFForm.Handle : TFMXObject;
begin
  Result:=DefaultForm;
end;

function TFForm.HWND;
begin
  Result:=FMXHandleToHWND(DefaultForm.Handle);
end;

procedure TFForm.Color(Color: Integer);
begin
  DefaultForm.Fill.Kind := TBrushKind.Solid;
  DefaultForm.Fill.Color := Color;
end;

procedure TFForm.LoadStyleFromFile(Stylefilename: string);
begin
  if FileExists(Stylefilename) then
  begin
    StyledForm := TStyleBook.Create(DefaultForm);
    StyledForm.LoadFromFile(Stylefilename);
    DefaultForm.StyleBook := StyledForm;
    DefaultForm.BeginUpdate;
    DefaultForm.EndUpdate;
  end;
end;

// Rectangle
function TFRectangle.FCreate(FParent : TFmxObject): TRectangle;
begin
  Result := TRectangle.Create(nil);
  Result.Parent := FParent;
  Result.Size.PlatformDefault := False;
  Result.Stroke.Thickness := 0;
  Result.Visible := true;
  ControlRectangle := Result;
end;

procedure TFRectangle.Left(FLeft : Single);
begin
  ControlRectangle.Position.X := FLeft;
end;

procedure TFRectangle.Top (FTop : Single);
begin
  ControlRectangle.Position.Y := FTop;
end;

procedure TFRectangle.Height (FHeight : Single);
begin
  ControlRectangle.Height := FHeight;
end;

procedure TFRectangle.Width (FWidth : Single);
begin
  ControlRectangle.Width := FWidth;
end;

procedure TFRectangle.Color(AlColor : Integer);
begin
  ControlRectangle.Fill.Kind := TBrushKind.Solid;
  ControlRectangle.Fill.Color := AlColor;
end;

function TFRectangle.Handle : TFmxObject;
begin
 Result := ControlRectangle;
end;

procedure TFRectangle.Opacity(FOpacity : Single);
begin
  ControlRectangle.Opacity := FOpacity;
end;

procedure TFRectangle.RotationAngle (FRotationAngle : Single);
begin
  ControlRectangle.RotationAngle := FRotationAngle;
end;

procedure TFRectangle.SetBounds(XR: Single; YR: Single; WidthR: Single;
  HeightR: Single);
begin
  ControlRectangle.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFRectangle.Align(Al: TAlignLayout);
begin
  ControlRectangle.Align := Al;
end;

procedure TFRectangle.StrokeSetting(FThickness: Single; OutColor: Integer);
begin
  ControlRectangle.Stroke.Kind:=TBrushKind.Solid;
  ControlRectangle.Stroke.Thickness:=FThickness;
  ControlRectangle.Stroke.Color:=OutColor;
end;

procedure TFRectangle.LoadPicture(Image: String; WrapMode: TWrapMode);
begin
  ControlRectangle.Fill.Kind := TBrushKind.Bitmap;
  ControlRectangle.Fill.Bitmap.Bitmap.LoadFromFile(Image);
  ControlRectangle.Fill.Bitmap.WrapMode := WrapMode;
end;

procedure TFRectangle.CornerStyle(XRadi, YRadi: Single; FCorners : TCorners; CornerType: TCornerType);
begin
  ControlRectangle.CornerType := CornerType;
  ControlRectangle.Corners := FCorners;
  ControlRectangle.XRadius := XRadi;
  ControlRectangle.YRadius := YRadi;
end;

procedure TFRectangle.Enabled(FEnabled: Boolean);
begin
 ControlRectangle.Enabled:=FEnabled;
end;

procedure TFRectangle.Visible(Visible : Boolean);
begin
  if Visible = true then
  ControlRectangle.Visible := true else
  ControlRectangle.Visible := false;
end;

procedure TFRectangle.OnClick(Event: TNotifyEvent);
begin
  ControlRectangle.OnClick:=Event;
end;

procedure TFRectangle.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlRectangle.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlRectangle.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlRectangle.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlRectangle.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFRectangle.AnimateColor(FColorID: TColorID; AlColor: Integer; FDuration: Single);
begin
  case FColorID of
    RColor: ControlRectangle.AnimateColor('Fill.Color',AlColor,FDuration);
    StrokeColor: ControlRectangle.AnimateFloat('Stroke.Color',AlColor,FDuration);
  end;
end;

procedure TFRectangle.OnMouseDown(Event: TMouseEvent);
begin
  ControlRectangle.OnMouseDown:=Event;
end;

procedure TFRectangle.OnMouseEnter(Event: TNotifyEvent);
begin
  ControlRectangle.OnMouseEnter:=Event;
end;

procedure TFRectangle.OnMouseLeave(Event: TNotifyEvent);
begin
  ControlRectangle.OnMouseLeave:=Event;
end;

procedure TFRectangle.OnMouseUp(Event: TMouseEvent);
begin
  ControlRectangle.OnMouseUp:=Event;
end;

// Pie
function TFPie.FCreate(FParent : TFmxObject): TPie;
begin
  Result := TPie.Create(nil);
  Result.Parent := FParent;
  Result.Stroke.Thickness:=0;
  Result.Visible := true;
  ControlPie := Result;
end;

procedure TFPie.Left (FLeft : Single);
begin
  ControlPie.Position.X := FLeft;
end;

procedure TFPie.Top (FTop : Single);
begin
  ControlPie.Position.Y := FTop;
end;

procedure TFPie.Height (FHeight : Single);
begin
  ControlPie.Height := FHeight;
end;

procedure TFPie.Width (FWidth : Single);
begin
  ControlPie.Width := FWidth;
end;

procedure TFPie.Color(AlColor : Integer);
begin
  ControlPie.Fill.Kind := TBrushKind.Solid;
   ControlPie.Fill.Color := AlColor;
end;

function TFPie.Handle : TFmxObject;
begin
 Result := ControlPie;
end;

procedure TFPie.Opacity (FOpacity : Single);
begin
  ControlPie.Opacity := FOpacity;
end;

procedure TFPie.RotationAngle (FRotationAngle : Single);
begin
 ControlPie.RotationAngle := FRotationAngle;
end;

procedure TFPie.SetBounds(XR: Single; YR: Single; WidthR: Single;
  HeightR: Single);
begin
  ControlPie.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFPie.Align(Al: TAlignLayout);
begin
  ControlPie.Align := Al;
end;

procedure TFPie.Angle(SAngle ,EAngle : Single);
begin
  ControlPie.EndAngle := (360 * (SAngle/EAngle));
end;

procedure TFPie.StrokeSetting(FThickness: Single; OutColor: Integer);
begin
  ControlPie.Stroke.Kind:=TBrushKind.Solid;
  ControlPie.Stroke.Thickness:=FThickness;
  ControlPie.Stroke.Color:=OutColor;
end;

procedure TFPie.Visible(Visible : Boolean);
begin
  if Visible = true then
  ControlPie.Visible := true else
  ControlPie.Visible := false;
end;

procedure TFPie.OnClick(Event: TNotifyEvent);
begin
  ControlPie.OnClick:=Event;
end;

procedure TFPie.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay: Single);
begin
  case FPropertyType of
   PositionX: ControlPie.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlPie.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlPie.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlPie.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFPie.AnimateColor(FColorID : TColorID;AlColor : Integer;FDuration : Single);
begin
  case FColorID of
    RColor: ControlPie.AnimateColor('Fill.Color',AlColor,FDuration);
    StrokeColor: ControlPie.AnimateFloat('Stroke.Color',AlColor,FDuration);
  end;
end;

procedure TFPie.OnMouseDown(Event: TMouseEvent);
begin
  ControlPie.OnMouseDown:=Event;
end;

procedure TFPie.OnMouseEnter(Event: TNotifyEvent);
begin
  ControlPie.OnMouseEnter:=Event;
end;

procedure TFPie.OnMouseLeave(Event: TNotifyEvent);
begin
  ControlPie.OnMouseLeave:=Event;
end;

procedure TFPie.OnMouseUp(Event: TMouseEvent);
begin
  ControlPie.OnMouseUp:=Event;
end;
//Circle

// Pie
function TFCircle.FCreate(FParent : TFmxObject): TCircle;
begin
  Result := TCircle.Create(nil);
  Result.Parent := FParent;
  Result.Stroke.Thickness:=0;
  Result.Visible := true;
  ControlCircle := Result;
end;

procedure TFCircle.Left (FLeft : Single);
begin
  ControlCircle.Position.X := FLeft;
end;

procedure TFCircle.Top (FTop : Single);
begin
  ControlCircle.Position.Y := FTop;
end;

procedure TFCircle.Height (FHeight : Single);
begin
  ControlCircle.Height := FHeight;
end;

procedure TFCircle.Width (FWidth : Single);
begin
  ControlCircle.Width := FWidth;
end;

procedure TFCircle.Color(AlColor : Integer);
begin
  ControlCircle.Fill.Kind := TBrushKind.Solid;
   ControlCircle.Fill.Color := AlColor;
end;

function TFCircle.Handle : TFmxObject;
begin
 Result := ControlCircle;
end;

procedure TFCircle.Opacity (FOpacity : Single);
begin
  ControlCircle.Opacity := FOpacity;
end;

procedure TFCircle.SetBounds(XR: Single; YR: Single; WidthR: Single;
  HeightR: Single);
begin
  ControlCircle.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFCircle.Align(Al: TAlignLayout);
begin
  ControlCircle.Align := Al;
end;

procedure TFCircle.LoadPicture(Image: String; WrapMode: TWrapMode);
begin
  ControlCircle.Fill.Kind := TBrushKind.Bitmap;
  ControlCircle.Fill.Bitmap.Bitmap.LoadFromFile(Image);
  ControlCircle.Fill.Bitmap.WrapMode := WrapMode;
end;


procedure TFCircle.StrokeSetting(FThickness: Single; OutColor: Integer);
begin
  ControlCircle.Stroke.Kind:=TBrushKind.Solid;
  ControlCircle.Stroke.Thickness:=FThickness;
  ControlCircle.Stroke.Color:=OutColor;
end;

procedure TFCircle.Enabled(FEnabled: Boolean);
begin
 ControlCircle.Enabled:=FEnabled;
end;

procedure TFCircle.Visible(Visible : Boolean);
begin
  if Visible = true then
  ControlCircle.Visible := true else
  ControlCircle.Visible := false;
end;

procedure TFCircle.OnClick(Event: TNotifyEvent);
begin
  ControlCircle.OnClick:=Event;
end;

procedure TFCircle.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay: Single);
begin
  case FPropertyType of
   PositionX: ControlCircle.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlCircle.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlCircle.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlCircle.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFCircle.AnimateColor(FColorID: TColorID; AlColor: Integer; FDuration: Single);
begin
  case FColorID of
    RColor: ControlCircle.AnimateColor('Fill.Color',AlColor,FDuration);
    StrokeColor: ControlCircle.AnimateFloat('Stroke.Color',AlColor,FDuration);
  end;
end;

procedure TFCircle.OnMouseDown(Event: TMouseEvent);
begin
  ControlCircle.OnMouseDown:=Event;
end;

procedure TFCircle.OnMouseEnter(Event: TNotifyEvent);
begin
  ControlCircle.OnMouseEnter:=Event;
end;

procedure TFCircle.OnMouseLeave(Event: TNotifyEvent);
begin
  ControlCircle.OnMouseLeave:=Event;
end;

procedure TFCircle.OnMouseUp(Event: TMouseEvent);
begin
  ControlCircle.OnMouseUp:=Event;
end;


// TARC
function TFArc.FCreate(FParent : TFmxObject): TArc;
begin
  Result := TArc.Create(nil);
  Result.Parent := FParent;
  Result.Stroke.Thickness := 0;
  Result.Visible := true;
  ControlArc := Result;
end;

procedure TFArc.Left (FLeft : Single);
begin
  ControlArc.Position.X := FLeft;
end;

procedure TFArc.Top (FTop : Single);
begin
  ControlArc.Position.Y := FTop;
end;

procedure TFArc.Height (FHeight : Single);
begin
  ControlArc.Height := FHeight;
end;

procedure TFArc.Width (FWidth : Single);
begin
  ControlArc.Width := FWidth;
end;

procedure TFArc.Color(AlColor : Integer);
begin
  ControlArc.Fill.Kind := TBrushKind.Solid;
  ControlArc.Fill.Color := AlColor;
end;

function TFArc.Handle : TFmxObject;
begin
 Result := ControlArc;
end;

procedure TFArc.Opacity (FOpacity : Single);
begin
  ControlArc.Opacity := FOpacity;
end;

procedure TFArc.RotationAngle (FRotationAngle : Single);
begin
  ControlArc.RotationAngle := FRotationAngle;
end;

procedure TFArc.SetBounds(XR: Single; YR: Single; WidthR: Single;
  HeightR: Single);
begin
  ControlArc.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFArc.Align(Al: TAlignLayout);
begin
  ControlArc.Align := Al;
end;

procedure TFArc.Angle(SAngle ,EAngle : Single);
begin
  ControlArc.EndAngle := (360 * (SAngle/EAngle));
end;

procedure TFArc.StrokeSetting(FThickness: Single; CapStyle : TStrokeCap;OutColor: Integer); stdcall;
begin
 ControlArc.Stroke.Thickness:=FThickness;
 ControlArc.Stroke.Cap:= CapStyle;
 ControlArc.Stroke.Color:=OutColor;
end;

procedure TFArc.Enabled(FEnabled: Boolean);
begin
 ControlArc.Enabled:=FEnabled;
end;

procedure TFArc.Visible(Visible : Boolean);
begin
  if Visible = true then
  ControlArc.Visible := true else
  ControlArc.Visible := false;
end;

procedure TFArc.OnClick(Event: TNotifyEvent);
begin
  ControlArc.OnClick:=Event;
end;

procedure TFArc.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay: Single);
begin
  case FPropertyType of
   PositionX: ControlArc.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlArc.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlArc.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlArc.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFArc.AnimateColor(FColorID: TColorID; AlColor: Integer; FDuration: Single);
begin
  case FColorID of
    RColor: ControlArc.AnimateColor('Fill.Color',AlColor,FDuration);
    StrokeColor: ControlArc.AnimateFloat('Stroke.Color',AlColor,FDuration);
  end;
end;

procedure TFArc.OnMouseDown(Event: TMouseEvent);
begin
  ControlArc.OnMouseDown:=Event;
end;

procedure TFArc.OnMouseEnter(Event: TNotifyEvent);
begin
  ControlArc.OnMouseEnter:=Event;
end;

procedure TFArc.OnMouseLeave(Event: TNotifyEvent);
begin
  ControlArc.OnMouseLeave:=Event;
end;

procedure TFArc.OnMouseUp(Event: TMouseEvent);
begin
  ControlArc.OnMouseUp:=Event;
end;

// TButton
function TFButton.FCreate(FParent : TFmxObject): TButton;
begin
  Result := TButton.Create(nil);
  Result.Parent := FParent;
  Result.Text := ('Button');
  Result.Visible := true;
  ControlButton := Result;
end;

procedure TFButton.Left (FLeft : Single);
begin
 ControlButton.Position.X := FLeft;
end;

procedure TFButton.Top (FTop : Single);
begin
  ControlButton.Position.Y := FTop;
end;

procedure TFButton.Height (FHeight : Single);
begin
  ControlButton.Height := FHeight;
end;

procedure TFButton.Width (FWidth : Single);
begin
  ControlButton.Width := FWidth;
end;

procedure TFButton.Opacity(FOpacity : Single);
begin
  ControlButton.Opacity := FOpacity;
end;

procedure TFButton.RotationAngle (FRotationAngle : Single);
begin
  ControlButton.RotationAngle := FRotationAngle;
end;

procedure TFButton.Text (FText : String);
begin
  ControlButton.Text := PChar(FText);
end;

procedure TFButton.SetBounds(XR, YR, WidthR, HeightR: Single);
begin
  ControlButton.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFButton.Align(Al: TAlignLayout);
begin
  ControlButton.Align := Al;
end;

procedure TFButton.SetHint(FText: string);
begin
 ControlButton.ShowHint:=true;
 ControlButton.Hint:=FText;
end;

procedure TFButton.Enabled(Enabled: Boolean);
begin
  ControlButton.Enabled := Enabled;
end;

procedure TFButton.Visible(Visible: Boolean);
begin
  if Visible = true then
  ControlButton.Visible := true else
  ControlButton.Visible := false;
end;

procedure TFButton.OnClick(Event: TNotifyEvent);
begin
  ControlButton.OnClick := Event;
end;

procedure TFButton.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlButton.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlButton.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlButton.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlButton.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFButton.OnMouseDown(Event: TMouseEvent);
begin
 ControlButton.OnMouseDown:=Event;
end;

procedure TFButton.OnMouseEnter(Event: TNotifyEvent);
begin
 ControlButton.OnMouseEnter:=Event;
end;

procedure TFButton.OnMouseLeave(Event: TNotifyEvent);
begin
 ControlButton.OnMouseLeave:=Event;
end;

procedure TFButton.OnMouseUp(Event: TMouseEvent);
begin
 ControlButton.OnMouseUp:=Event;
end;

// TLabel
function TFLabel.FCreate(FParent : TFmxObject): TLabel;
begin
  Result := TLabel.Create(nil);
  Result.Parent := FParent;
  Result.Size.PlatformDefault := False;
  Result.Text := 'Jiva newstone';
  Result.Visible := true;
  ControlLabel := Result;
end;

procedure TFLabel.Left (FLeft : Single);
begin
  ControlLabel.Position.X := FLeft;
end;

procedure TFLabel.Top (FTop : Single);
begin
 ControlLabel.Position.Y := FTop;
end;

procedure TFLabel.Height (FHeight : Single);
begin
  ControlLabel.Height := FHeight;
end;

procedure TFLabel.Width (FWidth : Single);
begin
  ControlLabel.Width := FWidth;
end;

procedure TFLabel.Color(AlColor : Integer);
begin
  ControlLabel.FontColor := AlColor;
end;

procedure TFLabel.Opacity(FOpacity : Single);
begin
  ControlLabel.Opacity := FOpacity;
end;

procedure TFLabel.RotationAngle(FRotationAngle : Single);
begin
  ControlLabel.RotationAngle := FRotationAngle;
end;

procedure TFLabel.Text (FText : String);
begin
  ControlLabel.Text := PChar(FText);
end;

procedure TFLabel.SetBounds(XR, YR, WidthR, HeightR: Single);
begin
  ControlLabel.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFLabel.AutoSize(FAutoSize : Boolean);
begin
 ControlLabel.AutoSize:=FAutoSize;
end;

procedure TFLabel.Align(Al: TAlignLayout);
begin
  ControlLabel.Align:=Al;
end;

procedure TFLabel.SetHint(FText: string);
begin
 ControlLabel.ShowHint:=true;
 ControlLabel.Hint:=FText;
end;

procedure TFLabel.FontSetting(FontName: string; FontSize, Color: Integer); stdcall;
begin
 ControlLabel.StyledSettings:=[];
 ControlLabel.Font.Family:=FontName;
 ControlLabel.Font.Size:=FontSize;
 ControlLabel.FontColor:=Color;
end;

procedure TFLabel.TextSetting(FWordWrap : Boolean; FHorzAlign, FVertAlign : TTextAlign);
begin
 ControlLabel.TextSettings.HorzAlign:=FHorzAlign;
 ControlLabel.TextSettings.VertAlign:=FVertAlign;
 ControlLabel.TextSettings.WordWrap:=FWordWrap;
end;

procedure TFLabel.Enabled(FEnabled: Boolean);
begin
  if FEnabled = true then
  ControlLabel.Enabled := true else
  ControlLabel.Enabled := false;
end;

procedure TFLabel.Visible(Visible: Boolean);
begin
  if Visible = true then
  ControlLabel.Visible := true else
  ControlLabel.Visible := false;
end;

procedure TFLabel.OnClick(Event: TNotifyEvent);
begin
  ControlLabel.OnClick := Event;
end;

procedure TFLabel.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlLabel.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlLabel.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlLabel.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlLabel.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFLabel.OnMouseDown(Event: TMouseEvent);
begin
 ControlLabel.OnMouseDown:=Event;
end;

procedure TFLabel.OnMouseEnter(Event: TNotifyEvent);
begin
 ControlLabel.OnMouseEnter:=Event;
end;

procedure TFLabel.OnMouseLeave(Event: TNotifyEvent);
begin
 ControlLabel.OnMouseLeave:=Event;
end;

procedure TFLabel.OnMouseUp(Event: TMouseEvent);
begin
 ControlLabel.OnMouseUp:=Event;
end;

//TEdit
function TFEdit.FCreate(FParent : TFmxObject): TEdit;

begin
  Result := TEdit.Create(nil);
  Result.Parent := FParent;
  Result.Visible := true;
  ControlEdit := Result;
end;

procedure TFEdit.Left (FLeft : Single);
begin
  ControlEdit.Position.X := FLeft;
end;

procedure TFEdit.Top(FTop : Single);
begin
  ControlEdit.Position.Y := FTop;
end;

procedure TFEdit.Height(FHeight : Single);
begin
  ControlEdit.Height := FHeight;
end;

procedure TFEdit.Width(FWidth : Single);
begin
  ControlEdit.Width := FWidth;
end;

procedure TFEdit.Opacity(FOpacity : Single);
begin
  ControlEdit.Opacity := FOpacity;
end;

procedure TFEdit.RotationAngle (FRotationAngle : Single);
begin
 ControlEdit.RotationAngle := FRotationAngle;
end;

procedure TFEdit.Text (FText : String);
begin
  ControlEdit.Text := PChar(FText);
end;

procedure TFEdit.SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
begin
  ControlEdit.SetBounds(XR,YR,WidthR,HeightR);
end;

procedure TFEdit.Align(Al: TAlignLayout);
begin
  ControlEdit.Align:=Al;
end;

procedure TFEdit.SetHint(FText: string);
begin
 ControlEdit.ShowHint:=true;
 ControlEdit.Hint:=FText;
end;

procedure TFEdit.FontSetting(FontName : string; FontSize, Color : Integer); stdcall;
begin
  ControlEdit.StyledSettings := [];
  ControlEdit.TextSettings.Font.Family := FontName;
  ControlEdit.TextSettings.Font.Size := FontSize;
  ControlEdit.TextSettings.FontColor := Color;
end;


procedure TFEdit.AddSearchButton(OnClick : TNotifyEvent);
var
 SearchEditButton1 : TSearchEditButton;
begin
  SearchEditButton1 := TSearchEditButton.Create(nil);
  SearchEditButton1.Parent := ControlEdit;
  SearchEditButton1.OnClick:=OnClick;
end;

procedure TFEdit.AddPasswordButton;
var
 PasswordEditButton1 : TPasswordEditButton;
begin
  ControlEdit.Password:=true;
  PasswordEditButton1 := TPasswordEditButton.Create(nil);
  PasswordEditButton1.Parent := ControlEdit;
end;


procedure TFEdit.Enabled(Enabled: Boolean);
begin
 ControlEdit.Enabled:=Enabled;
end;

procedure TFEdit.Visible(Visible: Boolean);
begin
  if Visible = true then
  ControlEdit.Visible := true else
  ControlEdit.Visible := false;
end;

procedure TFEdit.OnClick(Event: TNotifyEvent);
begin
  ControlEdit.OnClick := Event;
end;

procedure TFEdit.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlEdit.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlEdit.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlEdit.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlEdit.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFEdit.OnChange(Event: TNotifyEvent);
begin
  ControlEdit.OnChange:=Event;
end;

procedure TFEdit.OnMouseDown(Event: TMouseEvent);
begin
 ControlEdit.OnMouseDown:=Event;
end;

procedure TFEdit.OnMouseEnter(Event: TNotifyEvent);
begin
 ControlEdit.OnMouseEnter:=Event;
end;

procedure TFEdit.OnMouseLeave(Event: TNotifyEvent);
begin
 ControlEdit.OnMouseLeave:=Event;
end;

procedure TFEdit.OnMouseUp(Event: TMouseEvent);
begin
 ControlEdit.OnMouseUp:=Event;
end;

//TSwitch
function TFSwitch.FCreate(FParent : TFmxObject; IsChecked: Boolean):TSwitch;
begin
  Result := TSwitch.Create(nil);
  Result.Parent := FParent;
  if ISChecked = true then
  Result.IsChecked:=true;
  Result.Visible:=true;
  ControlSwitch := Result;
end;

procedure TFSwitch.Left (FLeft : Single);
begin
  ControlSwitch.Position.X := FLeft;
end;

procedure TFSwitch.Top (FTop : Single);
begin
  ControlSwitch.Position.Y := FTop;
end;

procedure TFSwitch.Height (FHeight : Single);
begin
 ControlSwitch.Height := FHeight;
end;

procedure TFSwitch.Width (FWidth : Single);
begin
  ControlSwitch.Width := FWidth;
end;

procedure TFSwitch.Opacity(FOpacity : Single);
begin
 ControlSwitch.Opacity := FOpacity;
end;

procedure TFSwitch.RotationAngle (FRotationAngle : Single);
begin
 ControlSwitch.RotationAngle := FRotationAngle;
end;

procedure TFSwitch.SetBounds(XR, YR, WidthR, HeightR : Single);
begin
  ControlSwitch.Position.X:=XR;
  ControlSwitch.Position.Y:=YR;
end;

procedure TFSwitch.Align(Al: TAlignLayout);
begin
 ControlSwitch.Align:=Al;
end;

procedure TFSwitch.SetHint(FText: string);
begin
 ControlSwitch.ShowHint:=true;
 ControlSwitch.Hint:=FText;
end;

function TFSwitch.ISSwitchedOn : Boolean;
begin
  if ControlSwitch.IsChecked = true then
  Result:=true else Result:=false;
end;

procedure TFSwitch.Enabled(Enabled: Boolean);
begin
 ControlSwitch.Enabled:=Enabled;
end;

procedure TFSwitch.Visible(Visible: Boolean);
begin
  if Visible = true then
  ControlSwitch.Visible := true else
  ControlSwitch.Visible := false;
end;

procedure TFSwitch.OnClick(Event: TNotifyEvent);
begin
  ControlSwitch.OnClick := Event;
end;

procedure TFSwitch.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlSwitch.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlSwitch.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlSwitch.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlSwitch.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFSwitch.OnSwitch(Event: TNotifyEvent);
begin
  ControlSwitch.OnSwitch:=Event;
end;

procedure TFSwitch.OnMouseDown(Event: TMouseEvent);
begin
 ControlSwitch.OnMouseDown:=Event;
end;

procedure TFSwitch.OnMouseEnter(Event: TNotifyEvent);
begin
 ControlSwitch.OnMouseEnter:=Event;
end;

procedure TFSwitch.OnMouseLeave(Event: TNotifyEvent);
begin
 ControlSwitch.OnMouseLeave:=Event;
end;

procedure TFSwitch.OnMouseUp(Event: TMouseEvent);
begin
 ControlSwitch.OnMouseUp:=Event;
end;

//Checkbox
function TFCheckbox.FCreate(FParent : TFmxObject; Checked: Boolean; Text: string) : TCheckBox;
begin
  Result := TCheckBox.Create(nil);
  Result.Parent := FParent;
  Result.Text := PWideChar(Text);
  if Checked = true then
  Result.IsChecked:=true;
  ControlCheckBox := Result;
end;

procedure TFCheckbox.Left (FLeft : Single);
begin
  ControlCheckBox.Position.X := FLeft;
end;

procedure TFCheckbox.Top (FTop : Single);
begin
  ControlCheckBox.Position.Y := FTop;
end;

procedure TFCheckbox.Height (FHeight : Single);
begin
  ControlCheckBox.Height := FHeight;
end;

procedure TFCheckbox.Width (FWidth : Single);
begin
  ControlCheckBox.Width := FWidth;
end;

procedure TFCheckbox.Opacity(FOpacity : Single);
begin
  ControlCheckBox.Opacity := FOpacity;
end;

procedure TFCheckbox.RotationAngle (FRotationAngle : Single);
begin
 ControlCheckBox.RotationAngle := FRotationAngle;
end;

procedure TFCheckbox.SetBounds(XR, YR, WidthR, HeightR : Single);
begin
  ControlCheckBox.SetBounds(XR,YR,WidthR,HeightR);
end;

procedure TFCheckbox.FontSetting(FontName : string; FontSize, FontColor : Integer);
begin
 ControlCheckBox.StyledSettings:=[];
 ControlCheckBox.Font.Family:=FontName;
 ControlCheckBox.Font.Size:=FontSize;
 ControlCheckBox.FontColor:=FontColor;
end;

procedure TFCheckbox.Align(Al: TAlignLayout); stdcall;
begin
  ControlCheckBox.Align:=Al;
end;

procedure TFCheckbox.SetHint(FText: string);
begin
 ControlCheckBox.ShowHint:=true;
 ControlCheckBox.Hint:=FText;
end;

function TFCheckbox.ISChecked : Boolean;
begin
  if ControlCheckBox.IsChecked = true then
  Result:=true else Result:=false;
end;

procedure TFCheckbox.SetChecked(Checked : Boolean);
begin
 if Checked = true then
 ControlCheckBox.IsChecked:=true else
 ControlCheckBox.IsChecked:=false;
end;

procedure TFCheckBox.OnChange(Event: TNotifyEvent);
begin
  ControlCheckBox.OnChange:=Event;
end;

procedure TFCheckBox.Enabled(Enabled: Boolean);
begin
 ControlCheckBox.Enabled:=Enabled;
end;

procedure TFCheckbox.Visible(Visible: Boolean);
begin
  if Visible = true then
  ControlCheckBox.Visible := true else
  ControlCheckBox.Visible := false;
end;

procedure TFCheckBox.OnClick(Event: TNotifyEvent);
begin
 ControlCheckBox.OnClick := Event;
end;

procedure TFCheckBox.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlCheckBox.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlCheckBox.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlCheckBox.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlCheckBox.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFCheckBox.OnMouseDown(Event: TMouseEvent);
begin
 ControlCheckBox.OnMouseDown:=Event;
end;

procedure TFCheckBox.OnMouseEnter(Event: TNotifyEvent);
begin
 ControlCheckBox.OnMouseEnter:=Event;
end;

procedure TFCheckBox.OnMouseLeave(Event: TNotifyEvent);
begin
 ControlCheckBox.OnMouseLeave:=Event;
end;

procedure TFCheckBox.OnMouseUp(Event: TMouseEvent);
begin
 ControlCheckBox.OnMouseUp:=Event;
end;

// Memo
procedure TFMemo.ClearBackground(Sender: TObject);
var
 Obj : TFmxObject;
begin
  Obj := ControlMemo.FindStyleResource('Background');
  if Assigned(Obj) And (Obj is TActiveStyleObject) Then
    TActiveStyleObject(Obj).Source := Nil;
end;

function TFMemo.FCreate(FParent : TFmxObject; NoBack : Boolean) : TMemo;
begin
 Result := TMemo.Create(nil);
 Result.Parent:= FParent;
 Result.ReadOnly:=true;
 ControlMemo := Result;
 if NoBack = true then
 Result.OnApplyStyleLookup:=ClearBackground;
end;

procedure TFMemo.SetBounds(XR: Single; YR: Single; WidthR: Single; HeightR: Single);
begin
 ControlMemo.SetBounds(XR,YR,WidthR,HeightR);
end;

procedure TFMemo.Align(Al: TAlignLayout);
begin
 ControlMemo.Align:=Al;
end;

procedure TFMemo.SetStrings(Src: TStrings);
begin
  ControlMemo.Lines.SetStrings(src);
end;

procedure TFMemo.AddLine(FText: string);
begin
 ControlMemo.Lines.Add(FText);
end;

procedure TFMemo.Clear;
begin
 ControlMemo.Lines.Clear;
end;

procedure TFMemo.LoadFromfile(filename: string);
begin
  ControlMemo.Lines.LoadFromFile(filename);
end;

procedure TFMemo.FontSetting(FontName : string; FontSize, FontColor: Integer);
begin
 ControlMemo.StyledSettings:=[];
 ControlMemo.Font.Size:=FontSize;
 ControlMemo.Font.Family:=FontName;
 ControlMemo.FontColor:=FontColor;
end;

procedure TFMemo.Enabled(Enabled: Boolean);
begin
 ControlMemo.Enabled:=Enabled;
end;

procedure TFMemo.Opacity(Opacity: Single);
begin
 ControlMemo.Opacity:=Opacity;
end;

procedure TFMemo.Visible(Visible: Boolean);
begin
  if Visible = true then
  ControlMemo.Visible := true else
  ControlMemo.Visible := false;
end;

function TFMemo.LineCount : Integer;
begin
 Result:=ControlMemo.Lines.Count;
end;

function TFMemo.LineStrings(FIndex : Integer) : String;
begin
 Result:=ControlMemo.Lines.Strings[FIndex];
end;

procedure TFMemo.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlMemo.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlMemo.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlMemo.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlMemo.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;
//

function TFAniIndicator.FCreate(FParent : TFmxObject) : TAniIndicator;
begin
  Result := TAniIndicator.Create(nil);
  Result.Parent:=FParent;
  Result.Enabled:=true;
  ControlAniIndicator := Result;
end;

procedure TFAniIndicator.SetBounds(XR, YR, WidthR, HeightR : Single);
begin
  ControlAniIndicator.Position.X:=XR;
  ControlAniIndicator.Position.Y:=YR;
  ControlAniIndicator.Size.Width:=WidthR;
  ControlAniIndicator.Size.Height:=HeightR;
end;

procedure TFAniIndicator.Align(Al: TAlignLayout);
begin
 ControlAniIndicator.Align:=Al;
end;

procedure TFAniIndicator.Enabled(Enabled: Boolean);
begin
 ControlAniIndicator.Enabled:=Enabled;
end;

procedure TFAniIndicator.Opacity(Opacity: Single);
begin
 ControlAniIndicator.Opacity:=Opacity;
end;

procedure TFAniIndicator.Visible(Visible: Boolean);
begin
  if Visible = true then
  ControlAniIndicator.Visible := true else
  ControlAniIndicator.Visible := false;
end;

procedure TFAniIndicator.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlAniIndicator.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlAniIndicator.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlAniIndicator.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlAniIndicator.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

// Layout
function TFLayout.FCreate(FParent: TFmxObject) : TLayout;
begin
 Result := TLayout.Create(nil);
 Result.Parent:=FParent;
 Result.Visible:=true;
 ControlLayout := Result;
end;

function TFLayout.Handle : TFmxObject;
begin
 Result:=ControlLayout;
end;

procedure TFLayout.SetBounds(XR, YR, WidthR, HeightR : Single);
begin
 ControlLayout.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFLayout.Align(Al: TAlignLayout);
begin
 ControlLayout.Align:=Al;
end;

procedure TFLayout.Enabled(FEnabled: Boolean);
begin
 ControlLayout.Enabled:=FEnabled;
end;

procedure TFLayout.Opacity(FOpacity: Single);
begin
 ControlLayout.Opacity:=FOpacity;
end;

procedure TFLayout.Visible(FVisible: Boolean);
begin
 ControlLayout.Visible:=FVisible;
end;

procedure TFLayout.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlLayout.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlLayout.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlLayout.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlLayout.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;

procedure TFLayout.AnimateOpacity(FOpacity,FDuration: Single;FDelay: Single);
begin
 ControlLayout.AnimateFloatDelay('Opacity',FOpacity,FDuration,FDelay);
end;

//ScrollBoX
function TFScrollbox.FCreate(FParent: TFmxObject) : TScrollbox;
begin
 Result := TScrollbox.Create(nil);
 Result.Parent:=FParent;
 Result.Visible:=true;
 ControlScrollbox := Result;
end;

function TFScrollbox.Handle : TFmxObject;
begin
 Result:=ControlScrollbox;
end;

procedure TFScrollbox.SetBounds(XR, YR, WidthR, HeightR : Single);
begin
 ControlScrollbox.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFScrollbox.Align(Al: TAlignLayout);
begin
 ControlScrollbox.Align:=Al;
end;

procedure TFScrollbox.Enabled(FEnabled: Boolean);
begin
 ControlScrollbox.Enabled:=FEnabled;
end;

procedure TFScrollbox.Opacity(FOpacity: Single);
begin
 ControlScrollbox.Opacity:=FOpacity;
end;

procedure TFScrollbox.Visible(FVisible: Boolean);
begin
 ControlScrollbox.Visible:=FVisible;
end;

procedure TFScrollbox.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlScrollbox.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlScrollbox.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlScrollbox.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlScrollbox.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;
//Progressbar

function TFProgressbar.FCreate(FParent: TFmxObject) : TProgressBar;
begin
 Result := TProgressBar.Create(nil);
 Result.Parent := FParent;
 Result.Visible := true;
 ControlProgressBar:= Result;
end;

function TFProgressbar.Handle : TFMXObject;
begin
 Result:=ControlProgressBar;
end;

procedure TFProgressbar.SetBounds(XR, YR, WidthR, HeightR : Single);
begin
 ControlProgressBar.SetBounds(XR, YR, WidthR, HeightR);
end;

procedure TFProgressbar.Align(Al: TAlignLayout);
begin
 ControlProgressBar.Align:=Al;
end;

procedure TFProgressbar.SetHint(FText: string);
begin
 ControlProgressBar.ShowHint:=true;
 ControlProgressBar.Hint:=FText;
end;

procedure TFProgressbar.Enabled(FEnabled: Boolean);
begin
 ControlProgressBar.Enabled:=FEnabled;
end;

procedure TFProgressbar.Opacity(FOpacity: Single);
begin
 ControlProgressBar.Opacity:=FOpacity;
end;

procedure TFProgressbar.Visible(FVisible: Boolean);
begin
 ControlProgressBar.Visible:=FVisible;
end;

procedure TFProgressbar.Max(FMax: Single);
begin
 ControlProgressBar.Max:=FMax;
end;

procedure TFProgressbar.Min(FMin: Single);
begin
 ControlProgressBar.Min:=FMin;
end;

procedure TFProgressbar.Value(FValue: Single);
begin
 ControlProgressBar.Value:=FValue;
end;

procedure TFProgressbar.Animate(FPropertyType: TPropertyType; FNewValue: Single; FDuration: Single; FDelay : Single);
begin
  case FPropertyType of
   PositionX: ControlProgressBar.AnimateFloat('Position.X',FNewValue,FDuration);
   PositionY: ControlProgressBar.AnimateFloat('Position.Y',FNewValue,FDuration);
   RWidth: ControlProgressBar.AnimateFloat('Width',FNewValue,FDuration);
   RHeight: ControlProgressBar.AnimateFloat('Height',FNewValue,FDuration);
   end;
end;
//

function TFBlur.FCreate(FParent: TFmxObject) : TBlurEffect;
begin
 Result := TBlurEffect.Create(nil);
 Result.Parent := FParent;
 Result.Enabled := true;
 ControlBlur:= Result;
end;

procedure TFBlur.Enabled(FEnabled: Boolean);
begin
 ControlBlur.Enabled:=FEnabled;
end;

procedure TFBlur.BlurAmount(FBlurAmount: Single;FDuration : Single;FDelay : Single);
begin
 ControlBlur.AnimateFloatDelay('BlurAmount',FBlurAmount,FDuration,FDelay);
end;

function TFGaussianBlur.FCreate(FParent: TFmxObject) : TGaussianBlurEffect;
begin
 Result := TGaussianBlurEffect.Create(nil);
 Result.Parent := FParent;
 Result.Enabled := true;
 ControlGaussianBlur:= Result;
end;

procedure TFGaussianBlur.Enabled(FEnabled: Boolean);
begin
 ControlGaussianBlur.Enabled:=FEnabled;
end;

procedure TFGaussianBlur.BlurAmount(FBlurAmount: Single;FDuration : Single;FDelay : Single);
begin
 ControlGaussianBlur.AnimateFloatDelay('BlurAmount',FBlurAmount,FDuration,FDelay);
end;

function TFGlow.FCreate(FParent: TFmxObject) : TGlowEffect;
begin
 Result := TGlowEffect.Create(nil);
 Result.Parent := FParent;
 Result.Enabled := true;
 ControlGlow:= Result;
end;

procedure TFGlow.Enabled(FEnabled: Boolean);
begin
 ControlGlow.Enabled:=FEnabled;
end;

procedure TFGlow.GlowColor(AlColor: Integer);
begin
  ControlGlow.GlowColor:=AlColor;
end;

procedure TFGlow.GlowAmount(FGlowAmount: Single;FDuration : Single; FDelay : Single);
begin
  ControlGlow.AnimateFloatDelay('Softness',FGlowAmount,FDuration,FDelay);
end;

function TFInnerGlow.FCreate(FParent: TFmxObject) : TInnerGlowEffect;
begin
 Result := TInnerGlowEffect.Create(nil);
 Result.Parent := FParent;
 Result.Enabled := true;
 ControlInnerGlow:= Result;
end;

procedure TFInnerGlow.Enabled(FEnabled: Boolean);
begin
 ControlInnerGlow.Enabled:=FEnabled;
end;

procedure TFInnerGlow.GlowColor(AlColor: Integer);
begin
  ControlInnerGlow.GlowColor:=AlColor;
end;

procedure TFInnerGlow.GlowAmount(FGlowAmount: Single;FDuration : Single; FDelay : Single);
begin
  ControlInnerGlow.AnimateFloatDelay('Softness',FGlowAmount,FDuration,FDelay);
end;

// Class Creator
function InitFormHandle: FForm; stdcall;
begin
  Result := TFForm.Create;
end;

procedure CreateRectangle(var IRect : FRectangle; FParent: TFmxObject); stdcall;
begin
  IRect := TFRectangle.Create;
  IRect.FCreate(FParent);
end;

function InitRectangleHandle: FRectangle; stdcall;
begin
  Result := TFRectangle.Create;
end;

function InitPieHandle: FPie; stdcall;
begin
  Result := TFPie.Create;
end;

function InitCircleHandle: FCircle; stdcall;
begin
  Result := TFCircle.Create;
end;

function InitArcHandle: FArc; stdcall;
begin
  Result := TFArc.Create;
end;

function InitButtonHandle: FButton; stdcall;
begin
  Result := TFButton.Create;
end;

function InitLabelHandle: FLabel; stdcall;
begin
  Result := TFLabel.Create;
end;

function InitEditHandle: FEdit; stdcall;
begin
  Result := TFEdit.Create;
end;

function InitSwitchHandle: FSwitch; stdcall;
begin
  Result := TFSwitch.Create;
end;

function InitCheckboxHandle: FCheckbox; stdcall;
begin
  Result := TFCheckbox.Create;
end;

function InitMemoHandle: FMemo; stdcall;
begin
  Result := TFMemo.Create;
end;

function InitAniIndicatorHandle: FAniIndicator; stdcall;
begin
  Result := TFAniIndicator.Create;
end;

function InitLayoutHandle: FLayout; stdcall;
begin
  Result := TFLayout.Create;
end;

function InitScrollBoxHandle: FScrollBox; stdcall;
begin
  Result := TFScrollBox.Create;
end;

function InitProgressBarHandle : FProgressBar; stdcall;
begin
  Result := TFProgressBar.Create;
end;

function InitBlurHandle : FBlur; stdcall;
begin
  Result := TFBlur.Create;
end;

function InitGaussianBlurHandle : FGaussianBlur; stdcall;
begin
  Result := TFGaussianBlur.Create;
end;

function InitGlowHandle: FGlow; stdcall;
begin
  Result := TFGlow.Create;
end;

function InitInnerGlowHandle: FInnerGlow; stdcall;
begin
  Result := TFInnerGlow.Create;
end;

procedure RunExecutable(FHandle : HWND; FOperation,FFilename, FParemeter, FDirectory : string; FShowCMD : Integer); stdcall;
begin
 ShellExecute(FHandle,PWideChar(FOperation),PWideChar(FFilename), PWideChar(FParemeter), PWideChar(FDirectory),FShowCMD);
end;

exports
  InitFormHandle,
  InitRectangleHandle,
  InitPieHandle,
  InitCircleHandle,
  InitArcHandle,
  InitButtonHandle,
  InitLabelHandle,
  InitEditHandle,
  InitSwitchHandle,
  InitCheckboxHandle,
  InitMemoHandle,
  InitAniIndicatorHandle,
  InitLayoutHandle,
  InitScrollBoxHandle,
  InitProgressBarHandle,
  InitBlurHandle,
  InitGaussianBlurHandle,
  InitGlowHandle,
  InitInnerGlowHandle,
  RunExecutable;
end.
