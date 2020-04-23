$majorversion = "1.2"
$build="5"
$build=$majorversion+"."+$build
$installer="snowsql-$($build)-windows_x86_64.msi"
$url = "https://sfc-repo.snowflakecomputing.com/snowsql/bootstrap/$($majorversion)/windows_x86_64/$($installer)"
Write-Output "$url is: $url"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Invoke-WebRequest $url -outfile $installer
Write-Output "$(get-date) - Installing $url"

$install=get-item $installer

Start-Process msiexec.exe -Wait -ArgumentList "/I $($install.FullName) /quiet"

RefreshEnv

snowsql --versions
