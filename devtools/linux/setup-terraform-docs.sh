#!/usr/bin/env bash
set -exo
VERSION="0.9.1"
wget "https://github.com/segmentio/terraform-docs/releases/download/v${VERSION}/terraform-docs-v${VERSION}-linux-amd64" --no-check-certificate -O /usr/local/bin/terraform-docs
chmod +x /usr/local/bin/terraform-docs
terraform-docs --version
