unit Core;

interface

uses
  Graphics,
  VersionInfo;

const
  Appname = 'Wormtail';
  AppWebsiteUrl = 'http://www.elsdoerfer.info/wormtail';  
  function AppnameWithVersion: string;
  function AppVersion: string;

// Get a good color contrast
function GetGoodContrast(const Color: TColor): TColor;

implementation

function AppVersion: string;
begin
  Result := MakeVersionString(vsfFull);  
end;

function AppnameWithVersion: string;
begin
  Result := Appname+' '+MakeVersionString(vsfShort);
end;

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

end.
