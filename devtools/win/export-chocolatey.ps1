# After https://gist.github.com/alimbada/449ddf65b4ef9752eff3
# Put this in Export-Chocolatey.ps1 file and run it:
# Export-Chocolatey.ps1 > packages.config
# You can install the packages using
# choco install packages.config -y

function make-packages
{
   Write-Output "<?xml version=`"1.0`" encoding=`"utf-8`"?>"
   Write-Output "<packages>"
   choco list -lo -r -y | % { "   <package id=`"$($_.SubString(0, $_.IndexOf("|")))`" version=`"$($_.SubString($_.IndexOf("|") + 1))`" />" }
   Write-Output "</packages>"
}


make-packages | out-file packages.config
