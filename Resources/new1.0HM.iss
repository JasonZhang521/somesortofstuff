; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Huster Manager"
#define MyAppVersion "1.0"
#define MyAppPublisher "HongZhiWei, Inc."
#define MyAppURL "http://hzwtech.com/"
#define MyAppExeName "Huster Manager.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D45B7713-31AC-4B7F-A391-83DAED26E1E5}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=\\Mac\Home\Desktop\Huster Manager\licence.rtf
InfoBeforeFile=\\Mac\Home\Desktop\Huster Manager\Use and Distribution License.rtf
OutputDir=\\Mac\Home\Desktop\out
OutputBaseFilename=HM_INSTALLER
SetupIconFile=Y:\temp\comeshere\managerbk\Resources\ico.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "\\Mac\Home\Desktop\Huster Manager\Huster Manager.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "\\Mac\Home\Desktop\Huster Manager\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

