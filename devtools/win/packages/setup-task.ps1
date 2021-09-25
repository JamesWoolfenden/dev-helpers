[CmdletBinding()]
param (
    [Parameter()]
    [String]
    $installdir="C:\tools\bin\"
)

# requires lastversion and tar to be installed
$tool="task"
$version= lastversion $tool
$zipfile= "task_windows_amd64.zip"
$url    = "https://github.com/go-task/task/releases/download/v$($version)/$zipfile"
Write-output $url
remove-item "$installdir\$tool*"

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile $zipfile
tar -xvf $zipfile
Remove-Item $zipfile
write-output ""$installdir\$tool.exe""
Move-Item "$tool*" "$installdir\$tool.exe"

& "$tool.exe" --version
