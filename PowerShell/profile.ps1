Import-Module posh-git
Import-Module oh-my-posh
Import-Module Terminal-Icons

Set-PoshPrompt -Theme "~/.config/ohmyposh/jakelly.omp.json"

Function GetChildFormatWide {Get-ChildItem | Format-Wide}
Function GetChildFormatList {Get-ChildItem | Format-List}
Set-Alias -Name l -Value Get-ChildItem
Set-Alias -Name ls -Value GetChildFormatWide
Set-Alias -Name list -Value GetChildFormatList
Set-Alias winfetch pwshfetch-test-1
$Global:GetChildItemColorVerticalSpace = 1

cls