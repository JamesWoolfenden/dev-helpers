#!/usr/bin/env bash
set -exo
rm -f *.tar.gz
lastversion yor -d --assets

tar -xzf $(find . -name *.tar.gz)
sudo mv yor /usr/local/bin
chmod +x /usr/local/bin/yor
yor --version
