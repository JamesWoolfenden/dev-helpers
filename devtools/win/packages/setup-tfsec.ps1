[CmdletBinding()]
param (
    [Parameter()]
    [string]
    $version
)

if (!$version)
{
    $version=lastversion tfsec
}

Write-Output "Tfsec Version:$version"

$url = "https://github.com/aquasecurity/tfsec/releases/download/v$($version)/tfsec-windows-amd64.exe"

Write-Output "$(get-date) - Getting $url"

$installdir ="C:\tools\bin"

if (!(test-path $installdir))
{
    mkdir $installdir
}

try{
    remove-item "$installdir\tfsec.exe" -ErrorAction SilentlyContinue
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile "$installdir\tfsec.exe"
    tfsec -version
}
catch{
   write-error $_
}
