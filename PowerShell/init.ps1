# Install powershell 7 
# https://github.com/PowerShell/PowerShell/releases/tag/v7.1.4

# Install Windows Terminal Preview
# https://www.microsoft.com/en-us/p/windows-terminal-preview/9n8g5rfz9xk3?activetab=pivot:overviewtab

Install-Module Nuget
Install-Module posh-git
Install-Module oh-my-posh
Install-Module Terminal-Icons
Install-Module winfetch

Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons
Import-Module winfetch

New-Item -ItemType Directory -Force -Path ~/.config/ohmyposh

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JackRKelly/PowerShellCustomization/master/OhMyPosh/config.json?token=AKG6HW5CXGMACA3PFDIUGHLBJC4CE" -OutFile ~/.config/ohmyposh/jakelly.omp.json

Set-PoshPrompt -Theme "~/.config/ohmyposh/jakelly.omp.json"
