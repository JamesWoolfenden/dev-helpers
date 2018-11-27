#!/bin/bash
set -exo
apt-get install unzip
VERSION="1.2.2"
cd /usr/local/bin
wget "https://releases.hashicorp.com/packer/$VERSION/packer_${VERSION}_linux_amd64.zip"
unzip "packer_${VERSION}_linux_amd64.zip"
rm "packer_${VERSION}_linux_amd64.zip"
packer -version
