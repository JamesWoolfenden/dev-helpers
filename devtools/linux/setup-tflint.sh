#!/usr/bin/env bash
set -exo
wget https://github.com/wata727/tflint/releases/download/v0.7.0/tflint_linux_amd64.zip
unzip tflint_linux_amd64.zip
rm tflint_linux_amd64.zip
mv tflint /usr/local/bin/tflint
chmod +x /usr/local/bin/tflint
tflint --version
