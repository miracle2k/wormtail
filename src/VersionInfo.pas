unit VersionInfo;

// Depending on build mode, retrieve the actual version info from an include.

interface

uses
  SysUtils;

{
    What we expect from the include file:

    // Format:  MAJOR.MINOR-STRING.BUILD
    // Example: 1.5-rc2.434
    // -1 values will be ignored
    WORMTAIL_VERSION_MAJOR    = -1;
    WORMTAIL_VERSION_MINOR    = -1;
    WORMTAIL_VERSION_IDENT    = 'ide-build';
    WORMTAIL_VERSION_BUILD    = -1;
    // A codename for the version, e.g. "Longhorn"
    WORMTAIL_VERSION_NAME     = '';
}

{$IFDEF AUTOMISED_BUILD}
  {$INCLUDE VersionInfoBuild.inc}
{$ELSE}
  {$INCLUDE VersionInfoIDE.inc}
{$ENDIF}

type
  TVersionStringFormat = (
    vsfFull,     // major/minor/ident/build
    vsfLong,     // major/minor/ident
    vsfShort     // major/minor
  );

function MakeVersionString(Format: TVersionStringFormat): string;

implementation

{$WARNINGS off}  // Prevent "Comparison always evaluates to True" for constant comparisons
function MakeVersionString(Format: TVersionStringFormat): string;
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

end.
