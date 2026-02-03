$url = "https://raw.githubusercontent.com/zta2/steamtools-3/main/Installer.exe"
$output = "$env:TEMP\Installer.exe"

Write-Host "Downloading installer..."

Invoke-WebRequest -Uri $url -OutFile $output -UseBasicParsing

Write-Host "Running installer..."
Start-Process -FilePath $output -Wait
