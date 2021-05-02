#!/usr/bin/env bash
set -exo
tool=kics
version=$(lastversion $tool)
url="https://github.com/Checkmarx/kics/releases/download/v$version/${tool}_${version}_linux_x64.tar.gz"
echo "Getting $url"
wget "$url"
tar -xzf "${tool}_${version}_linux_x64.tar.gz"
sudo mv "${tool}" /usr/local/bin
chmod +x /usr/local/bin/${tool}
$tool version
