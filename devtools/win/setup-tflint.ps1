<# This is now available as a choco package#>

$version= "0.17.0"
$zipfile= "tflint_windows_amd64.zip"
$url    = "https://github.com/wata727/tflint/releases/download/v$($Version)/$zipfile"

Write-Output "$(get-date) - Getting $url"

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}


$installdir ="C:\tools\tflint"
if (!(test-path $installdir))
{
    mkdir $installdir
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
Unzip "$PSScriptRoot\$zipfile" $installdir
Remove-Item "$PSScriptRoot\$zipfile"

& "$installdir\tflint.exe"
Write-Output "$(get-date) - Update your path"
