$version=lastversion terraformer
$name="terraformer"
$flavour=$name+"-all"
$url = "https://github.com/GoogleCloudPlatform/$name/releases/download/$version/$flavour-windows-amd64.exe"

Write-Output "$(get-date) - Getting $url"

$installdir ="C:\tools\bin"

if (!(test-path $installdir))
{
    mkdir $installdir
}

try{
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile "$installdir\$name.exe" -verbose
    & "$installdir\$name.exe" --version
    Write-Output "$(get-date) - Now Update your path"
}
catch{
   write-error $_
}
