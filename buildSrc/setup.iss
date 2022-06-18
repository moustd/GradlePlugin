#define PrettyAppPublisher "My Company, Inc."
#define AppPublisher "My Company"
#define PrettyAppName "My Program"
#define AppName "My Program"
#define AppVersion "1.5"
#define PublisherWebsite "https://www.example.com/"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{8BFF2832-15CD-42AA-A034-6EA1FC196C79}
AppName={#PrettyAppName}
AppVersion={#AppVersion}
;AppVerName={#PrettyAppName} {#AppVersion}
AppPublisher={#PrettyAppPublisher}
AppPublisherURL={#PublisherWebsite}
AppSupportURL={#PublisherWebsite}
AppUpdatesURL={#PublisherWebsite}
DefaultDirName={autopf}\{#PrettyAppName}
DefaultGroupName={#PrettyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "C:\Program Files (x86)\Inno Setup 6\Examples\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#PrettyAppName}"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(PrettyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

