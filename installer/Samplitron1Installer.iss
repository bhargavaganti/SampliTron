; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{10216C99-86D8-452F-9667-6A85EC2ED5B2}
AppName=SampliTron
AppVerName=SampliTron 1.0
AppPublisher=Zeta Centauri, Inc.
AppPublisherURL=http://zetacentauri.com
AppSupportURL=http://zetacentauri.com
AppUpdatesURL=http://zetacentauri.com
DefaultDirName={pf}\Zeta Centauri\SampliTron
DefaultGroupName=Zeta Centauri\SampliTron
LicenseFile=F:\src\zc\SampliTron\Release\License.txt
OutputDir=F:\src\zc\SampliTron\Release
OutputBaseFilename=SampliTron1Setup
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked
Name: "quicklaunchicon"; Description: "{cm:CreateQuickLaunchIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "F:\src\zc\SampliTron\Release\SampliTron.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\btn1lrg.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\btn1sml.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\cancel.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\darkbtn.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\disk.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\exclamation.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\greenbtn.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\help.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\info.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\libsndfile-1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\License.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\midiport.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\octave.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\openfolder.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\samplitron.htb"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\samplitron.ico"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\sliderbk.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\sliderind.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\spin.bmp"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\wrench.xpm"; DestDir: "{app}"; Flags: ignoreversion
Source: "F:\src\zc\SampliTron\Release\Samples\*"; DestDir: "{app}\Samples"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "F:\src\zc\SampliTron\Release\Patches\*"; DestDir: "{app}\Patches"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files
Source: "F:\src\zc\SampliTron\Release\vcredist_x86.exe"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "F:\src\zc\SampliTron\Release\DirectX\DXSETUP.exe"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "F:\src\zc\SampliTron\Release\DirectX\DSETUP.dll"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "F:\src\zc\SampliTron\Release\DirectX\dsetup32.dll"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "F:\src\zc\SampliTron\Release\DirectX\dxupdate.cab"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall
Source: "F:\src\zc\SampliTron\Release\DirectX\Aug2009_XAudio_x86.cab"; DestDir: "{app}"; Flags: ignoreversion deleteafterinstall

[Icons]
Name: "{group}\SampliTron"; Filename: "{app}\SampliTron.exe"; WorkingDir: "{app}"
Name: "{group}\{cm:ProgramOnTheWeb,SampliTron}"; Filename: "http://zetacentauri.com/software_samplitron.htm"
Name: "{commondesktop}\SampliTron"; Filename: "{app}\SampliTron.exe"; Tasks: desktopicon; WorkingDir: "{app}"
Name: "{userappdata}\Microsoft\Internet Explorer\Quick Launch\SampliTron"; Filename: "{app}\SampliTron.exe"; Tasks: quicklaunchicon; WorkingDir: "{app}"

[Run]
Filename: "{app}\vcredist_x86.exe"; Parameters: "/q"; WorkingDir: "{app}";  StatusMsg: "Installing Visual C++ 2008 Redistributable..."; Flags: waituntilterminated
Filename: "{app}\DXSETUP.exe"; Parameters: "/SILENT"; WorkingDir: "{app}";  StatusMsg: "Installing DirectX XAudio2 Redistributable..."; Flags: waituntilterminated
Filename: "{app}\SampliTron.exe"; Description: "{cm:LaunchProgram,SampliTron}"; Flags: nowait postinstall skipifsilent

