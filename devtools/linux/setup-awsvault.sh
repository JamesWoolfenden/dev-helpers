#!/usr/bin/env bash
set -exo
VERSION="4.1.0"
curl -L https://github.com/99designs/aws-vault/releases/download/v${VERSION}/aws-vault-linux-amd64 > /usr/local/bin/aws-vault
chmod +x /usr/local/bin/aws-vault
aws-vault --version
