unit ExportFunctions;

{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}

interface

uses
 FMX.Graphics,FMX.Forms,FMX.Edit,FMX.Objects,FMX.Types,FMX.StdCtrls,FMX.Memo,
 FMX.ListBox,FMX.Layouts,FMX.Effects,FMX.Filter.Effects,
 System.UITypes,System.Classes,
 WinAPI.Windows;

type
 TPropertyType = (PositionX, PositionY, RWidth, RHeight);
 TColorID = (RColor,StrokeColor);

type
  FForm = interface(IUnknown)
    ['{9A399DB2-0D41-45E6-9322-42F5EEBF94C1}']
  function FCreate(WParent : HWND) : TForm; stdcall;
  procedure Color(Color : Integer); stdcall;
  procedure LoadStyleFromFile(Stylefilename : string); stdcall;
  function Handle : TFMXObject ;stdcall;
  function HWND : HWND; stdcall;
  end;

type
  FRectangle = interface(IUnknown)
    ['{D4B3A7E5-B868-4E25-ADFC-5EDF0310FED6}']
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
  FPie = interface(IUnknown)
    ['{ECD9D775-906B-4D9B-A4EF-A239D981D629}']
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
 FCircle = interface(IUnknown)
   ['{AE241574-7EB2-4C9F-A26A-EEEF863E3986}']
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
  FArc = interface(IUnknown)
    ['{CFB8067F-C61A-4724-ACC7-5B3C6537D84B}']
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
 FButton = interface(IUnknown)
    ['{F44AD17C-D522-4CA2-BEAC-D4B1190A8DE1}']
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
  FLabel= interface(IUnknown)
    ['{1EE436EA-51B9-401A-A6E0-D8919B2B47A7}']
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
 FEdit = interface(IUnknown)
   ['{37489E7F-D52D-40A7-9974-8B6D29487297}']
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
 FSwitch = interface(IUnknown)
   ['{DD572F47-053F-4B8F-813F-12BD02E5B8DB}']
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
 FCheckBox = interface(IUnknown)
   ['{F07DF579-A90A-4771-B923-115C5862F843}']
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
 FMemo = interface(IUnknown)
   ['{847F2BB7-EE92-4F09-BEC4-E0F2FAD688C1}']
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
 end;

type
 FAniIndicator = interface(IUnknown)
   ['{48D4625B-209F-423E-A031-256BE95DEFA6}']
   function FCreate(FParent : TFmxObject) : TAniIndicator; stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure Enabled(Enabled: Boolean); stdcall;
   procedure Opacity(Opacity: Single); stdcall;
   procedure Visible(Visible: Boolean); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
 end;

type
 FLayout= interface(IUnknown)
   ['{55FD36B3-01B4-4FED-90D7-810743227EB0}']
   function FCreate(FParent : TFmxObject) : TLayout; stdcall;
   function Handle : TFmxObject; stdcall;
   procedure SetBounds(XR, YR, WidthR, HeightR : Single);stdcall;
   procedure Align(Al: TAlignLayout); stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure Opacity(FOpacity: Single); stdcall;
   procedure Visible(FVisible: Boolean); stdcall;
   procedure AnimateOpacity(FOpacity,FDuration: Single;FDelay : Single); stdcall;
   procedure Animate(FPropertyType : TPropertyType; FNewValue : Single; FDuration : Single; FDelay : Single); stdcall;
 end;

type
 FScrollBox= interface(IUnknown)
   ['{3773151A-8F0E-48C0-B31B-0C25239427D3}']
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
 FProgressBar= interface(IUnknown)
   ['{8EC3C7CE-C814-49DC-A370-0948823543A3}']
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
 FBlur= interface(IUnknown)
   ['{79647B4E-3AC3-4799-B85C-3F0B6502BD50}']
   function FCreate(FParent : TFmxObject) : TBlurEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure BlurAmount(FBlurAmount: Single;FDuration : Single; FDelay : Single); stdcall;
 end;

type
 FGaussianBlur= interface(IUnknown)
   ['{97663366-6D27-4161-BBF4-9B9DBDF4CC34}']
   function FCreate(FParent : TFmxObject) : TGaussianBlurEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure BlurAmount(FBlurAmount: Single;FDuration : Single; FDelay : Single); stdcall;
 end;

type
 FGlow= interface(IUnknown)
   ['{D1162019-9C6F-4D48-89B2-19A98DBAD4CB}']
   function FCreate(FParent : TFmxObject) : TGlowEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure GlowColor(AlColor: Integer); stdcall;
   procedure GlowAmount(FGlowAmount: Single;FDuration : Single; FDelay : Single); stdcall;
 end;

type
 FInnerGlow= interface(IUnknown)
   ['{4226FD5D-3B2F-4616-B9A6-46EFDA4BE943}']
   function FCreate(FParent : TFmxObject) : TInnerGlowEffect; stdcall;
   procedure Enabled(FEnabled: Boolean); stdcall;
   procedure GlowColor(AlColor: Integer); stdcall;
   procedure GlowAmount(FGlowAmount: Single;FDuration : Single; FDelay : Single); stdcall;
 end;

implementation

procedure TrimAppMemorySize;
var
  MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
  except
  end;
  Application.ProcessMessages;
end;

function GetCurrentDLLProcess :THandle;
begin
  Result:=OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
end;

initialization
 TrimAppMemorySize;
finalization
 //ExitProcess(0);
// TerminateProcess(GetCurrentDLLProcess,0);
end.
