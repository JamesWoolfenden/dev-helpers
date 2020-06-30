$version= "0.15.5"
$zipfile= "sentinel_$($version)_windows_amd64.zip"
$url    = "https://releases.hashicorp.com/sentinel/$($version)/$zipfile"

Write-Output "$(get-date) - Getting $url"

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}


$installdir ="C:\tools\sentinel"
if (!(test-path $installdir))
{
    mkdir $installdir
}
else{
    Remove-Item "$installdir\sentinel.exe" -ErrorAction SilentlyContinue
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
Unzip "$PSScriptRoot\$zipfile" $installdir
Remove-Item "$PSScriptRoot\$zipfile"

& "$installdir\sentinel.exe" --version
Write-Output "$(get-date) - Update your path"
