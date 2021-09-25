$url = "https://storage.googleapis.com/shellcheck/shellcheck-stable.zip"
$installdir ="C:\tools\shellcheck"
if (!(test-path $installdir))
{
    mkdir $installdir
}else{
    rm $installdir -force -recurse
    mkdir $installdir
}

push-location
Set-Location $installdir

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri $url -outfile "$installdir\shellcheck-stable.zip"
cinst unzip
unzip.exe $installdir\shellcheck-stable.zip
Remove-Item $installdir\shellcheck-stable.zip
Pop-Location
move-item "$installdir\shellcheck-stable.exe" "$installdir\shellcheck.exe"
& "$installdir\shellcheck.exe" --version
Write-Output "Now Update your path"
