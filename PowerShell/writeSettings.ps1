$root = git rev-parse --show-toplevel

$PSHomeFormatted = $PsHome.Replace("\", "/") -join ""

$windowsTerminalSettings = (Get-Content -path "${root}/WindowsTerminal/templated.json").Replace("{{powershell-icon}}",
"${root}/Assets/icons8-powershell-96-red.png").Replace("{{powershell-path}}","${PSHomeFormatted}/pwsh.exe")

$windowsTerminalSettings = $windowsTerminalSettings -join " "

New-Item -Path "${root}/WindowsTerminal/settings.json" -ItemType file -Value $windowsTerminalSettings -Force