#!/usr/bin/env pwsh
. ./banner.ps1

Banner "Update Choco"
cup all

Banner "Python Packages"
pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade $_}

$packages = Get-ChildItem .\devtools\win\packages
foreach ($package in $packages) {
    banner $package.BaseName
    & $($package.FullName)
}
