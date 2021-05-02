#!/usr/bin/env bash
set -exo
VERSION=$(lastversion terraform-docs)
wget "https://github.com/terraform-docs/terraform-docs/releases/download/v${VERSION}/terraform-docs-v${VERSION}-linux-amd64.tar.gz" --no-check-certificate -O terraform-docs.tar.gz
tar -xzf terraform-docs.tar.gz terraform-docs
rm terraform-docs.tar.gz
mv terraform-docs /usr/local/bin/
chmod +x /usr/local/bin/terraform-docs
terraform-docs --version
