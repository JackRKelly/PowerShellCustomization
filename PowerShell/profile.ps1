Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons
Set-PoshPrompt -Theme "D:\OhMyPosh\config.json"

Function GetChildFormatWide {Get-ChildItem | Format-Wide}
Function GetChildFormatList {Get-ChildItem | Format-List}
Set-Alias -Name l -Value Get-ChildItem
Set-Alias -Name ls -Value GetChildFormatWide
Set-Alias -Name list -Value GetChildFormatList
$Global:GetChildItemColorVerticalSpace = 1

cls