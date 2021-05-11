$tool="infracost"
$version=lastversion $tool
$zipfile="infracost-windows-amd64.tar.gz"
$url="https://github.com/infracost/infracost/releases/download/v$version/$zipfile"

$installdir ="C:\tools\bin\"
remove-item "$installdir\$tool*"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
tar -xvf $zipfile
Remove-Item $zipfile
write-output ""$installdir\$tool.exe""
Move-Item "$tool*" "$installdir\$tool.exe"

& "$tool.exe" --version
