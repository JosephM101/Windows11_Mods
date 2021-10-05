@(set "0=%~f0"^)#) & powershell -nop -c iex([io.file]::ReadAllText($env:0)) & exit/b

$_Commands = {
  Write-Host "Searching for and uninstalling MicrosoftWindows.Client.WebExperience"
  Get-AppxPackage -Name MicrosoftWindows.Client.WebExperience | Remove-AppxPackage 
  # Get-AppxPackage -Name MicrosoftWindows.Client.WebExperience -AllUsers | Remove-AppxPackage -AllUsers
  Write-Host "Done. Press any key to exit"
  [void][System.Console]::ReadKey($FALSE)
} ; start -verb runas powershell -args "-nop -c & {`n`n$($_Commands-replace'"','\"')}"