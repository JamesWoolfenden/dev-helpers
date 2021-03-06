#!/usr/bin/env bash
set -exo
VERSION=$(lastversion tflint)
wget "https://github.com/wata727/tflint/releases/download/v${VERSION}/tflint_linux_amd64.zip"
unzip tflint_linux_amd64.zip
rm tflint_linux_amd64.zip
mv tflint /usr/local/bin/tflint
chmod +x /usr/local/bin/tflint
tflint --version
