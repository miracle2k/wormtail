unit VersionInfo;

// Depending on build mode, retrieve the content of this unit from an include.

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

end.
