#!/usr/bin/env bash
set -exo
version="0.21.0"

wget "https://github.com/open-policy-agent/conftest/releases/download/v$version/conftest_${version}_Linux_x86_64.tar.gz"
tar xzf conftest_${version}_Linux_x86_64.tar.gz
sudo mv conftest /usr/local/bin
chmod +x /usr/local/bin/conftest
conftest --version
