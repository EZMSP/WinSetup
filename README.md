# WinSetup
Windows workstation setup automation using boxstarter and chocolatey
before running, set execution policy unrestricted:
```
Set-ExecutionPolicy RemoteSigned
```
For Base:
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ezmsp/WinSetup/master/bootstrap-Win10-base.ps1'))
```
For Z:
```
iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/ezmsp/WinSetup/master/bootstrap-Win10-Z.ps1'))
```
