[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $installdir="C:\tools\bin\"
)

# requires lastversion and tar to be installed
$tool   = "kics"
$version= lastversion $tool
$zipfile= "$($tool)_$($version)_windows_x64.zip"
$url    = "https://github.com/Checkmarx/$tool/releases/download/v$($version)/$zipfile"

$installdir ="C:\tools\bin"
if (!(test-path $installdir))
{
    mkdir $installdir
}
else{
    Remove-Item "$installdir\$tool.exe" -ErrorAction SilentlyContinue
    Remove-Item "$installdir\license" -ErrorAction SilentlyContinue
    Remove-Item "$installdir\README.md" -ErrorAction SilentlyContinue
    Remove-Item "$installdir\assets\" -ErrorAction SilentlyContinue -Recurse

}

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
tar -xvf $zipfile
Remove-Item $zipfile
write-output ""$installdir\$tool.exe""
Move-Item "$tool*" "$installdir\$tool.exe"

& "$tool.exe" --version
