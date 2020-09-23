param([switch]$updatecore)

function Get-ChocoPackages
{
   param($list)
   $packages=@()
   foreach($item in $list)
   {
	   $packages+=$item.split('|')[0]
   }
   $packages
}

set-executionpolicy bypass
$targetpackages=Get-ChocoPackages (get-content .\core.txt)
$localpackages=Get-ChocoPackages (choco list -r -localonly)
$compared=Compare-Object $targetpackages $localpackages

if ($compared)
{
	foreach($diff in $compared)
	{
		if ($diff.SideIndicator -ne "=>")
		{
		   write-host "Installing $($diff.InputObject)"
		   cinst $($diff.InputObject)
		}
		else
		{
		   write-host "Skipped $($diff.InputObject)"
		}
	}
}
else
{
	Write-Host "Perfect already"
}

$newlist=(choco list -r -localonly)
$filename=".\choco-list-$(($env:COMPUTERNAME).toupper()).txt"
Set-Content -Value $newlist -Path $filename
if ($updatecore)
{
  Copy-Item $filename .\core.txt
}
