#!/usr/bin/env bash
set -exo
version=$(lastversion yor)
url="https://github.com/bridgecrew/yor/releases/download/v$version/yor_${version}_Linux_x86_64.tar.gz"
echo "Getting $url"
wget "$url"
tar -xzf "yor_${version}_Linux_x86_64.tar.gz"
sudo mv yor /usr/local/bin
chmod +x /usr/local/bin/yor
yor --version
