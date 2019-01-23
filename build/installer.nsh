!macro preInit

  ExpandEnvStrings $0 "%SYSTEMDRIVE%\ElectronTestApplication"

  SetRegView 64
  WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "$0"
  WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "$0"
  SetRegView 32
  WriteRegExpandStr HKLM "${INSTALL_REGISTRY_KEY}" InstallLocation "$0"
  WriteRegExpandStr HKCU "${INSTALL_REGISTRY_KEY}" InstallLocation "$0"
!macroend

!macro customInstall

  ExpandEnvStrings $0 "%SYSTEMDRIVE%\ElectronTestApplication\Electron Test Application.exe"

  ; SetRegView 64
  ; WriteRegExpandStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Run" ElectronTestApplication "$0"
  SetRegView 32
  WriteRegExpandStr HKLM "SOFTWARE\Microsoft\Windows\CurrentVersion\Run" ElectronTestApplication "$0"
!macroend
