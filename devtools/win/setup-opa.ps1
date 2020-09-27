
$file = "opa_windows_amd64.exe"
$tool = "opa"
$url = "https://openpolicyagent.org/downloads/latest/$file"

Write-Output "$(get-date) - Getting $url"

$installdir = "C:\tools\bin"
if (!(test-path $installdir)) {
    mkdir $installdir
}
else {
    Remove-Item "$installdir\$tool.exe" -ErrorAction SilentlyContinue
}

try {
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest -Uri $url -outfile "$installdir\$tool.exe"
    & "$installdir\$tool.exe" version
    Write-Output "$(get-date) - Now Update your path"
}
catch {
    write-error $_
}
