#define MainApp '../../build/Track-o-Bot.exe'
#define Major
#define Minor
#define Rev
#define Build
#expr ParseVersion(MainApp, Major, Minor, Rev, Build)
#define Version Str(Major)+"."+Str(Minor)+"."+Str(Rev)

[Setup]
AppName=Track-o-Bot
AppVersion={#Version}
AppPublisher=spidy.ch
AppPublisherURL=http://spidy.ch
DefaultDirName={pf}\Track-o-Bot
DefaultGroupName=Track-o-Bot
UninstallDisplayIcon={app}\Track-o-Bot.exe
OutputBaseFilename=Track-o-Bot_{#Version}

[Files]
Source: "../../build/Track-o-Bot.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "../../../WinSparkle/Release/WinSparkle.dll"; DestDir: "{app}"; Flags: ignoreversion  

; Required for QtNetworkManager to work with HTTPS
Source: "../../../OpenSSL-Win32/bin/libeay32.dll"; DestDir: "{app}"
Source: "../../../OpenSSL-Win32/bin/ssleay32.dll"; DestDir: "{app}"

; Qt
Source: "../../../../Qt/4.8.6/bin/QtCore4.dll"; DestDir: "{app}"   
Source: "../../../../Qt/4.8.6/bin/QtGui4.dll"; DestDir: "{app}"    
Source: "../../../../Qt/4.8.6/bin/QtNetwork4.dll"; DestDir: "{app}"   
Source: "../../../../Qt/4.8.6/bin/QtSvg4.dll"; DestDir: "{app}"                      
Source: "../../../../Qt/4.8.6/plugins/imageformats/qgif4.dll"; DestDir: "{app}/imageformats" 
Source: "../../../../Qt/4.8.6/plugins/imageformats/qico4.dll"; DestDir: "{app}/imageformats" 
Source: "../../../../Qt/4.8.6/plugins/imageformats/qjpeg4.dll"; DestDir: "{app}/imageformats" 
Source: "../../../../Qt/4.8.6/plugins/imageformats/qmng4.dll"; DestDir: "{app}/imageformats"  
Source: "../../../../Qt/4.8.6/plugins/imageformats/qsvg4.dll"; DestDir: "{app}/imageformats"   
Source: "../../../../Qt/4.8.6/plugins/imageformats/qtga4.dll"; DestDir: "{app}/imageformats"    
Source: "../../../../Qt/4.8.6/plugins/imageformats/qtiff4.dll"; DestDir: "{app}/imageformats"

; C/C++ Runtime
Source: "../../../../Program Files (x86)/Microsoft Visual Studio 10.0/VC/redist/x86/Microsoft.VC100.CRT/msvcp100.dll"; DestDir: "{app}"    
Source: "../../../../Program Files (x86)/Microsoft Visual Studio 10.0/VC/redist/x86/Microsoft.VC100.CRT/msvcr100.dll"; DestDir: "{app}" 

[Run]
Filename: "{app}\Track-o-Bot.exe"; Description: "Launch Track-o-Bot"; Flags: postinstall nowait

[Icons]
Name: "{group}\Track-o-Bot"; Filename: "{app}\Track-o-Bot.exe"
