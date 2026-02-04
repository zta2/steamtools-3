$url = "https://raw.githubusercontent.com/zta2/steamtools-3/main/steam_tools_installer.exe"
$output = "$env:TEMP\steam_tools_installer.exe"

Write-Host "Downloading installer..."

Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing

Write-Host "Running installer..."
Start-Process -FilePath $output -Wait
