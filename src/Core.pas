unit Core;

interface

uses
  VersionInfo;

const
  Appname = 'Wormtail';
  function AppnameWithVersion: string;
  function AppVersion: string;

implementation

function AppVersion: string;
begin
  Result := MakeVersionString(vsfFull);  
end;

function AppnameWithVersion: string;
begin
  Result := Appname+' '+MakeVersionString(vsfShort);
end;

end.
