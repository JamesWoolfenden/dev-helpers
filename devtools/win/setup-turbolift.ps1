[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $installdir="C:\tools\bin\"
)

# requires lastversion and tar to be installed

$tool   = "turbolift"
$version= lastversion "Skyscanner/$tool"
$zipfile= "$($tool)-windows-amd64.tar.gz"
$url    = "https://github.com/Skyscanner/turbolift/releases/download/$version/turbolift_$($version)_Windows_x86_64.tar.gz"

remove-item "$installdir\$tool*"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
tar -xvf $zipfile
Remove-Item $zipfile
write-output ""$installdir\$tool.exe""
Move-Item "$tool*" "$installdir\$tool.exe"

& "$tool.exe" --version
