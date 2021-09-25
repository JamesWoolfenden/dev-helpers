#!/usr/bin/env pwsh
. ./banner.ps1

Banner "Update Choco"
cup all

$packages = Get-ChildItem .\devtools\win\packages
foreach ($package in $packages) {
    banner $package.BaseName
    & $($package.FullName)
}
