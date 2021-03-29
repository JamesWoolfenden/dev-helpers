$version=lastversion terrascan
$name="terraformer"
$output="terrascan_$($version)_Windows_x86_64.tar.gz"
$url = "https://github.com/accurics/terrascan/releases/download/v$version/$output"
Write-Output "$(get-date) - Getting $url"

$installdir ="C:\tools\bin"

if (!(test-path $installdir))
{
    mkdir $installdir
}

try{
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile "$installdir\$output" -verbose
    tar -xvzf "$installdir\$output"  -C $installdir
    & "$installdir\terrascan.exe" version
    Write-Output "$(get-date) - Now Update your path"
    remove-item "$installdir\$output"
}
catch{
   write-error $_
}
