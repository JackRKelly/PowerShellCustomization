# Install powershell 7 
# https://github.com/PowerShell/PowerShell/releases/tag/v7.1.4

# Install Windows Terminal Preview
# https://www.microsoft.com/en-us/p/windows-terminal-preview/9n8g5rfz9xk3?activetab=pivot:overviewtab

Install-Module Nuget
Install-Module posh-git
Install-Module oh-my-posh
Install-Module Terminal-Icons
Install-Script -Name pwshfetch-test-1

Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons
Set-Alias winfetch pwshfetch-test-1

New-Item -ItemType Directory -Force -Path ~/.config/ohmyposh

Invoke-WebRequest -Uri "https://raw.githubusercontent.com/JackRKelly/PowerShellCustomization/master/OhMyPosh/config.json" -OutFile ~/.config/ohmyposh/jakelly.omp.json

Set-PoshPrompt -Theme "~/.config/ohmyposh/jakelly.omp.json"

$root = git rev-parse --show-toplevel

Get-Content -path "${root}/PowerShell/profile.ps1" | Set-Content -path $PROFILE

echo "Initialization has completed!"