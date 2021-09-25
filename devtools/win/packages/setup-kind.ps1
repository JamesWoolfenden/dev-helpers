$version= lastversion kind
$name   = "kind"
$url    = "https://github.com/kubernetes-sigs/$name/releases/download/v$version/$name-windows-amd64"

Write-Output "$(get-date) - Getting $url"

$installdir ="C:\tools\bin\"

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
