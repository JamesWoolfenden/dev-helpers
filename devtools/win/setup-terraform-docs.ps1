$version="0.8.1"
$url = "https://github.com/segmentio/terraform-docs/releases/download/v$($version)/terraform-docs-v$($version)-windows-amd64.exe"
Write-Output "$(get-date) - Getting $url"

$installdir ="C:\tools\terraform-docs"

if (!(test-path $installdir))
{
    mkdir $installdir
}

try{
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile "$installdir\terraform-docs.exe"
    & "$installdir\terraform-docs.exe" -version
    Write-Output "$(get-date) - Now Update your path"
}
catch{
   write-error $_
}
