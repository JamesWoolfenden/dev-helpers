#!/usr/bin/env bash
set -exo
figlet Install Yor
version=$(lastversion yor)
url="https://github.com/bridgecrew/yor/releases/download/v$version/yor_${version}_darwin-amd64.tar.gz"
echo "Getting $url"
wget "$url"
tar xzf "yor_${version}_darwin-amd64.tar.gz"
sudo mv yor /usr/local/bin
chmod +x /usr/local/bin/yor
yor --version
