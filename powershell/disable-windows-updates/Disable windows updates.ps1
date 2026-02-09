# Powershell version

# Major  Minor  Build  Revision
# -----  -----  -----  --------
# 5      1      19041  6456   



# Disable windows updates
    # Turn off service for updates
    set-service -name wuauserv -StartupType Disabled
    stop-service -name wuauserv -force -confirm
    # turn on block windows update local group policy








    # regedit key backup
    #Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows
    # regedit key create, modify, set value 

    #Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate

    Set-ItemProperty -Path HKLM:\Software\Policies\Microsoft\Windows\WindowsUpdate -Name TargetReleaseVersion -Value 1