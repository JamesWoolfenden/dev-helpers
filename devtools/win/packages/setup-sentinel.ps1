[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $installdir="C:\tools\bin\"
)

# requires lastversion and tar to be installed
$tool   = "sentinel"
$version= "0.18.4"
$zipfile= "$($tool)_$($version)_windows_amd64.zip"
$url    = "https://releases.hashicorp.com/$tool/$($version)/$zipfile"
Write-Output $url

remove-item "$installdir\$tool*"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
tar -xvf $zipfile
Remove-Item $zipfile
write-output ""$installdir\$tool.exe""
Move-Item "$tool*" "$installdir\$tool.exe"

& "$tool.exe" --version
