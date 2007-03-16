unit Core;

interface

uses
  SysUtils, VersionInfo;

const
  Appname = 'Wormtail';
  function AppnameWithVersion: string;
  function AppVersion: string;

function MakeAppVersion(): string;

implementation

{$WARNINGS off}  // Prevent "Comparison always evaluates to True" for constant comparisons
function MakeAppVersion(): string;
begin
  Result := '';

  // Start off with major version
  if (WORMTAIL_VERSION_MAJOR<>-1) then
  begin
    Result := Result+IntToStr(WORMTAIL_VERSION_MAJOR);
    // No minor version without a major on
    if (WORMTAIL_VERSION_MINOR<>-1) then
      Result := Result+'.'+IntToStr(WORMTAIL_VERSION_MINOR);
  end;

  // Ident
  if (WORMTAIL_VERSION_IDENT<>'') then
  begin
    if Result <> '' then Result := Result+'-';
    Result := Result+WORMTAIL_VERSION_IDENT;
  end;

  // Add build number
  if (WORMTAIL_VERSION_BUILD<>-1) then
    Result := Result+'.'+IntToStr(WORMTAIL_VERSION_BUILD);
end;
{$WARNINGS on}

function AppVersion: string;
begin
  Result := MakeAppVersion;  
end;

function AppnameWithVersion: string;
begin
  Result := Appname+' '+AppVersion;
end;

end.
