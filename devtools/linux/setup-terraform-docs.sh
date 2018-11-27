#!/usr/bin/env bash
set -exo
VERISON="0.3.0"
curl -L https://github.com/segmentio/terraform-docs/releases/download/v${VERSION}/terraform-docs_linux_amd64 > /usr/local/bin/terraform-docs
chmod +x /usr/local/bin/terraform-docs
terraform-docs --version
