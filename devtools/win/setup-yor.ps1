[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $installdir="C:\tools\bin\"
)

# requires lastversion and tar to be installed

$tool   = "yor"
#$version= lastversion $tool -D Assets
$version="0.1.34"
$zipfile= "yor-$($version)-windows-amd64.zip"
$url    = "https://github.com/bridgecrewio/$($tool)/releases/download/$($version)/$zipfile"

remove-item "$installdir\$tool*"

try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile $zipfile
}
catch {
    Write-Error ("Failed to download $url")
    exit 1
}

tar -xvf $zipfile
Remove-Item $zipfile
write-output ""$installdir\$tool.exe""
Move-Item "$tool*" "$installdir\$tool.exe"

& "$tool.exe" --version
