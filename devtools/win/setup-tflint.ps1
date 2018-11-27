$url = "https://github.com/wata727/tflint/releases/download/v0.7.0/tflint_windows_amd64.zip"
$zipfile="tflint_windows_amd64.zip"

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
rm "$PSScriptRoot\$zipfile"

& "$installdir\tflint.exe"
Write-host "Now Update your path"
