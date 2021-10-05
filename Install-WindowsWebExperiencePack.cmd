@(set "0=%~f0"^)#) & powershell -nop -c iex([io.file]::ReadAllText($env:0)) & exit/b

$_Commands = {
  $link = "ms-windows-store://pdp?productId=9MSSGKG348SP"
  Start-Process $link
} ; start powershell -args "-nop -c & {`n`n$($_Commands-replace'"','\"')}"