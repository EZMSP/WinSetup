$PackageName = "https://raw.githubusercontent.com/ezmsp/WinSetup/master/Win10-base.ps1"

# Bootstrap Boxstarter, will install requirements too if missing
Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('http://boxstarter.org/bootstrapper.ps1'))
Get-Boxstarter -Force

# Enable PSRemoting to allow remote management
Enable-PSRemoting -Force

# Passing packages to install from commandline
Install-BoxstarterPackage -PackageName $PackageName -Credential (Get-Credential $env:username)
