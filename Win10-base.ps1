# Allow running PowerShell scripts
Update-ExecutionPolicy Unrestricted

# Power Options - disable hibernation and disable monitor standby
Write-Host "Configuring power options..."
powercfg -change -monitor-timeout-ac 0
powercfg -change -standby-timeout-ac 0
powercfg -h off

# Windows Explorer options
Set-WindowsExplorerOptions -EnableShowFileExtensions

# Enable Remote Desktop
Enable-RemoteDesktop

# Disables the Bing Internet Search when searching from the search field in the Taskbar or Start Menu.
Disable-BingSearch

# Disable GameBar tips
Disable-GameBarTips

# Enable Microsoft update
Enable-MicrosoftUpdate

# Web Browsers
cinst googlechrome

#region Runtimes
cinst flashplayerplugin
cinst jre8
#cinst vcredist-all

# Install Windows Update and reboot
Install-WindowsUpdate -acceptEula

# Tweaks
# download Invoke-Win10Clean.ps1 and run
$outPath = 'C:\Utils\'
$outFile = 'Invoke-Win10Clean.ps1'
$dlFile = Join-Path -Path $outPath -ChildPath $outFile
if (-not(test-path $outPath)) {
    New-Item -Path $outPath -ItemType Directory
}
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/ezmsp/WinSetup/master/Invoke-Win10Clean.ps1' -UseBasicParsing -OutFile $dlFile
Invoke-Expression $dlFile
