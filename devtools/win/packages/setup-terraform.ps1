$tool="terraform"
$version=lastversion $tool
$url="https://releases.hashicorp.com/terraform/$($version)/terraform_$($version)_windows_amd64.zip"

Add-Type -AssemblyName System.IO.Compression.FileSystem
$installdir="C:\tools\bin"
$zipfile=".\terraform.zip"

if (!(test-path $installdir))
{
    mkdir $installdir
}
else{
    Remove-Item "$installdir\$tool.exe" -ErrorAction SilentlyContinue
}

try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile $zipfile
    Write-Information "Downloaded $url to $zipfile"
}
catch {
    Write-Error "Failed to download $url to $zipfile"
    exit 1
}

tar -xvf $zipfile
Remove-Item $zipfile
write-output "moving to $installdir\$tool.exe"
Move-Item "$tool*" "$installdir\$tool.exe"

& "$tool.exe" --version
