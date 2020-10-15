$version= "0.21.0"
$tool   = "conftest"
$zipfile= "$($tool)_$($version)_Windows_x86_64.zip"
$url    = "https://github.com/open-policy-agent/$tool/releases/download/v$($version)/$zipfile"


Write-Output "$(get-date) - Getting $url"

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}


$installdir ="C:\tools\$tool"
if (!(test-path $installdir))
{
    mkdir $installdir
}
else{
    Remove-Item "$installdir\$tool.exe" -ErrorAction SilentlyContinue
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
Unzip "$PSScriptRoot\$zipfile" $installdir
Remove-Item "$PSScriptRoot\$zipfile"

& "$installdir\$tool.exe" --version
Write-Output "$(get-date) - Update your path"
