$version="4.2.1"
$url="https://github.com/99designs/aws-vault/releases/download/v$version/aws-vault-windows-386.exe"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

iwr $url -outfile aws-vault-windows-386.exe
write-host "$(get-date) - Installing $url"

$installdir="c:\tools\aws-vault"
if (!(test-path $installdir))
{
   mkdir $installdir
}

mv aws-vault-windows-386.exe $installdir\aws-vault.exe -force
