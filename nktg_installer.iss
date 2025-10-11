[Setup]
AppName=NKTgLaw Internal Backend
AppVersion=1.0
DefaultDirName={pf}\NKTgLaw
DefaultGroupName=NKTgLaw
OutputDir=.
OutputBaseFilename=nktg_installer
Compression=lzma
SolidCompression=yes

[Files]
Source: "installer_files\nktg.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "installer_files\run_server.bat"; DestDir: "{app}"
Source: "installer_files\README.txt"; DestDir: "{app}"
Source: "installer_files\LICENSES.md"; DestDir: "{app}"

[Icons]
Name: "{group}\Run NKTg Backend"; Filename: "{app}\run_server.bat"
Name: "{group}\Uninstall NKTg Backend"; Filename: "{uninstallexe}"
