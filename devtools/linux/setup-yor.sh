#!/usr/bin/env bash
set -exo
rm -f *.tar.gz
pip3 install lastversion
lastversion bridgecrewio/yor -d --assets

tar -xzf $(find . -name *.tar.gz)
sudo mv yor /usr/local/bin
chmod +x /usr/local/bin/yor
yor --version
