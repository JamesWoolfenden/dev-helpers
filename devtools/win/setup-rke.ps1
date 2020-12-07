$version=lastversion rke
$name   ="rke"

$url = "https://github.com/rancher/$name/releases/download/$version/$($name)_windows-amd64.exe"

Write-Output "$(get-date) - Getting $url"

$installdir ="C:\tools\bin"

if (!(test-path $installdir))
{
    mkdir $installdir
}

if (test-path "$installdir\$name.exe")
{
    write-output "$(get-date) - Delete previous version $installdir\$name.exe"
    rm "$installdir\$name.exe"
}

try{
    curl $url -OutFile  "$installdir\$name.exe"
    & "$installdir\$name.exe" --version
}
catch{
   write-error $_
}
