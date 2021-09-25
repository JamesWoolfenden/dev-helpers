$version=lastversion terraform-docs
$url = "https://github.com/terraform-docs/terraform-docs/releases/download/v$($version)/terraform-docs-v$($version)-windows-amd64.zip"

Write-Output "$(get-date) - Getting $url"

$installdir ="C:\tools\bin"

if (!(test-path $installdir))
{
    mkdir $installdir
}

try{
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile "$installdir\terraform-docs.zip"
    cinst unzip
    unzip -o "$installdir\terraform-docs.zip" -d "$installdir"
    Remove-Item "$installdir\terraform-docs.zip"
}
catch{
   write-error $_
}
