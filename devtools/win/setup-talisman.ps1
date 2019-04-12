$version = "0.4.6"
$filename= "talisman_windows_amd64.exe"
$url = "https://github.com/thoughtworks/talisman/releases/download/v$version/$filename"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Invoke-WebRequest $url -outfile $filename
Write-Output "$(get-date) - Installing $url"

$installdir = "c:\tools\talisman"
if (!(test-path $installdir)) {
    mkdir $installdir
}

Move-Item $filename $installdir\talisman.exe -force
