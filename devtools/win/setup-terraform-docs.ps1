$url = "https://github.com/segmentio/terraform-docs/releases/download/v0.3.0/terraform-docs_windows_amd64.exe"
$installdir ="C:\tools\terraform-docs"
if (!(test-path $installdir))
{
    mkdir $installdir
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile "$installdir\terraform-docs.exe"
& "$installdir\terraform-docs.exe" -version
Write-Output "Now Update your path"
