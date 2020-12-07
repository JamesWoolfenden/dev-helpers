#!/usr/bin/env bash
set -exo
VERSION=$(lastversion aws-vault)

url="https://github.com/99designs/aws-vault/releases/download/v${VERSION}/aws-vault-linux-amd64"
echo "Getting %url"
curl -L  "$url" > /usr/local/bin/aws-vault
chmod +x /usr/local/bin/aws-vault
aws-vault --version
