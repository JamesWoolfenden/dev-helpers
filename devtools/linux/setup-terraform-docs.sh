#!/usr/bin/env bash
set -exo
lastversion terraform-docs -d --assets

tar -xzf $(find . -name *.tar.gz)
rm $(find . -name *.tar.gz)
mv terraform-docs /usr/local/bin/
chmod +x /usr/local/bin/terraform-docs
terraform-docs --version
