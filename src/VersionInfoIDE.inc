{
    This is the content of VersionInfo.pas - it's included there if
    we build from the IDE.

    It contains fake version data (maybe updated once in a while),
    and does not put version information into the exe via a RC file.

    It mainly exists so we can compile & test from the IDE without a hassle.
    Real builds are going to be automised via the build process.
}

const
  WORMTAIL_VERSION_MAJOR    = -1;
  WORMTAIL_VERSION_MINOR    = -1;
  WORMTAIL_VERSION_IDENT    = 'ide-build';
  WORMTAIL_VERSION_BUILD    = -1;
  WORMTAIL_VERSION_NAME     = '';
