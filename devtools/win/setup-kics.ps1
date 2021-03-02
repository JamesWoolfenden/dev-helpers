$tool   = "kics"
$version= lastversion $tool
$zipfile= "$($tool)_$($version)_windows_x64.zip"
$url    = "https://github.com/Checkmarx/$tool/releases/download/v$($version)/$zipfile"

Write-Output "$(get-date) - Getting $url"

Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}


$installdir ="C:\tools\bin\"
if (!(test-path $installdir))
{
    mkdir $installdir
}
else{
    Remove-Item "$installdir\*" -ErrorAction SilentlyContinue
}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
write-host "$(get-date) - getting $version"
Invoke-WebRequest -Uri $url -outfile $zipfile
Unzip "$PSScriptRoot\$zipfile" $installdir
Remove-Item "$PSScriptRoot\$zipfile"

& "$installdir\$tool.exe" version
Write-Output "$(get-date) - Update your path"
