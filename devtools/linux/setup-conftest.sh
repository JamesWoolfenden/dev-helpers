#!/usr/bin/env bash
set -exo
version=$(lastversion conftest)
url="https://github.com/open-policy-agent/conftest/releases/download/v$version/conftest_${version}_Linux_x86_64.tar.gz"
echo "Getting $url"
wget "$url"
tar xzf "conftest_${version}_Linux_x86_64.tar.gz"
sudo mv conftest /usr/local/bin
chmod +x /usr/local/bin/conftest
conftest --version
