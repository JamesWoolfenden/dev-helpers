#!/usr/bin/env bash
set -exo
VERSION=$(lastversion tfsec)

url="https://github.com/tfsec/tfsec/releases/download/v${VERSION}/tfsec-linux-amd64"
echo "Getting %url"
curl -L  "$url" > /usr/local/bin/tfsec
chmod +x /usr/local/bin/tfsec
tfsec --version
