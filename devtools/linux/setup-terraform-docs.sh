#!/usr/bin/env bash
set -exo
VERSION="0.6.0"
curl -L "https://github.com/segmentio/terraform-docs/releases/download/v${VERSION}/terraform-docs-v${VERSION}-linux-amd64"  > /usr/local/bin/terraform-docs
chmod +x /usr/local/bin/terraform-docs
terraform-docs --version
